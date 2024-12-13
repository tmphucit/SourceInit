## Fix multiple card mạng

```
Tại KOServer: 
1. Tìm pPPEO->dwIp = m_dwInternetIp; thay bằng pPPEO->dwIp =m_dwIntranetIp;
2. Tìm dòng case s2c_querygameserverinfo: ....
Thay ni.nIPAddr_Internet = m_dwInternetIp; bằng ni.nIPAddr_Internet = m_dwIntranetIp;
3. Tìm đoạn if (!GetLocalIpAddress(&m_dwIntranetIp, &m_dwInternetIp)) ....
Thay phần <<cout<<... m_dwInternetIp bằng m_dwIntranetIp.
```
