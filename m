Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E962C25B7E
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 May 2024 16:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3l0qxu08OUbopQfpqBcn453wmQep6XiyJbbKHqgwPRk=; b=QvC0St41SsDa1F
	j6voD2/dQGiZeeGNiC7Gh5WD2nIZSitKDYr8UF34jz+uzU99kruIa8mJqpVYwQ1+Av4L9bkO3UXfE
	lbrfMzIodM99JjS531Y8LGNpHGjD06eJxG/9kswmjCzqvKKDIMTzDRKOXBpA1MNyjsLn6XJRLwVdv
	6RJHSEtYAvRLA8xlL4kzvUDgnO7BT708eVMzqsJxwFuT15/P55qskuNqKNGmGpH1fXnhapb/bX6AZ
	8ssgjVtpsHWkKPbqD56p6leA1llHFqnA9p1zzglw60ePb7iFAZ2VN4rFypAbw+ZIRU8P53bn6MC3N
	QgduWO4ZCjHOvZkYLRkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD5TZ-0000000Auyt-4Bz1;
	Fri, 31 May 2024 16:51:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD5TV-0000000Auws-1vYy
	for linux-rockchip@lists.infradead.org;
	Fri, 31 May 2024 16:51:31 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 44V9DVbd016906;
	Fri, 31 May 2024 16:51:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2yALGhrqIJdnboggYEQ7s0oOkdMXFFvfY29GvTJKsx4=; b=C1jqMh91/HCNLsYp
	6vA0b0uij5adV0DIGh+mSk2889fAxxDFCLr2tEFroOAekW1b1SAR9R0h8CxXf/3s
	qNLZTplUe2tBKjI+dRyPBEdO0GkzhRPsBtNBP63nOKbwAsUDu3OSUm8RH+/hAh60
	0b14QBs37+7EEtSSY1IIFOQapbMiJ9B/RHwPwyxU7hSrSoDe8KHYv+s50BJtfsqT
	NEC7McfWpq3/h+LgAfd716kHhmnQouXV9wZpoVL56718AxTZOxzuHH7Y60JH+o3V
	CNksDFkaKKHohU0kpyZyp56R/+kOUTd8yz8FnkweMwrdv7D2FlOov7n3O+U9kVB9
	unkUNw==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3yf23stb7t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 31 May 2024 16:51:19 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 44VGpIGm017814
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 31 May 2024 16:51:18 GMT
Received: from [10.226.59.182] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 31 May
 2024 09:51:17 -0700
Message-ID: <197777e0-e6e1-7004-be27-edb98f8a235e@quicinc.com>
Date: Fri, 31 May 2024 10:51:16 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH v3 0/3] drm/panel-edp: remove several legacy compatibles
 used by the driver
Content-Language: en-US
To: Doug Anderson <dianders@chromium.org>
CC: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Neil Armstrong
	<neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        "Sam
 Ravnborg" <sam@ravnborg.org>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-rockchip@lists.infradead.org>
References: <20240531-edp-panel-drop-v3-0-4c98b2b95e3a@linaro.org>
 <7428a2f7-befc-6db8-76f4-3ca8dc12d31c@quicinc.com>
 <CAD=FV=Xcq-p5OxSnDJVF-Wp88ZfXOaOKJmh941ymy-f0wkhdhw@mail.gmail.com>
From: Jeffrey Hugo <quic_jhugo@quicinc.com>
In-Reply-To: <CAD=FV=Xcq-p5OxSnDJVF-Wp88ZfXOaOKJmh941ymy-f0wkhdhw@mail.gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: UnRxngflkST1yO4Wn85mX4qBzF_yXrRa
X-Proofpoint-GUID: UnRxngflkST1yO4Wn85mX4qBzF_yXrRa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.12.28.16
 definitions=2024-05-31_12,2024-05-30_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 adultscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 phishscore=0 mlxlogscore=999 bulkscore=0 mlxscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2405170001 definitions=main-2405310127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240531_095129_534259_4E1E7AFE 
X-CRM114-Status: GOOD (  21.92  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gNS8zMS8yMDI0IDEwOjIwIEFNLCBEb3VnIEFuZGVyc29uIHdyb3RlOgo+IEhpLAo+IAo+IE9u
IEZyaSwgTWF5IDMxLCAyMDI0IGF0IDk6MTjigK9BTSBKZWZmcmV5IEh1Z28gPHF1aWNfamh1Z29A
cXVpY2luYy5jb20+IHdyb3RlOgo+Pgo+PiBPbiA1LzMwLzIwMjQgNToxMiBQTSwgRG1pdHJ5IEJh
cnlzaGtvdiB3cm90ZToKPj4+IFRoZXJlIGFyZSB0d28gd2F5cyB0byBkZXNjcmliZSBhbiBlRFAg
cGFuZWwgaW4gZGV2aWNlIHRyZWUuIFRoZQo+Pj4gcmVjb21tZW5kZWQgd2F5IGlzIHRvIGFkZCBh
IGRldmljZSBvbiB0aGUgQVVYIGJ1cywgaWRlYWxseSB1c2luZyB0aGUKPj4+IGVkcC1wYW5lbCBj
b21wYXRpYmxlLiBUaGUgbGVnYWN5IHdheSBpcyB0byBkZWZpbmUgYSB0b3AtbGV2ZWwgcGxhdGZv
cm0KPj4+IGRldmljZSBmb3IgdGhlIHBhbmVsLgo+Pj4KPj4+IERvY3VtZW50IHRoYXQgYWRkaW5n
IHN1cHBvcnQgZm9yIGVEUCBwYW5lbHMgaW4gYSBsZWdhY3kgd2F5IGlzIHN0cm9uZ2x5Cj4+PiBk
aXNjb3VyYWdlZCAoaWYgbm90IGZvcmJpZGRlbiBhdCBhbGwpLgo+Pj4KPj4+IFdoaWxlIHdlIGFy
ZSBhdCBpdCwgYWxzbyBkcm9wIGxlZ2FjeSBjb21wYXRpYmxlIHN0cmluZ3MgYW5kIGJpbmRpbmdz
IGZvcgo+Pj4gZml2ZSBwYW5lbHMuIFRoZXNlIGNvbXBhdGlibGUgc3RyaW5ncyB3ZXJlIG5ldmVy
IHVzZWQgYnkgYSBEVCBmaWxlCj4+PiBwcmVzZW50IGluIExpbnV4IGtlcm5lbCBhbmQgbW9zdCBs
aWtlbHkgd2VyZSBuZXZlciB1c2VkIHdpdGggdGhlCj4+PiB1cHN0cmVhbSBMaW51eCBrZXJuZWwu
Cj4+Pgo+Pj4gVGhlIGZvbGxvd2luZyBjb21wYXRpYmxlcyB3ZXJlIG5ldmVyIHVzZWQgYnkgdGhl
IGRldmljZXMgc3VwcG9ydGVkIGJ5Cj4+PiB0aGUgdXBzdHJlYW0ga2VybmVsIGFuZCBhcmUgYSBz
dWJqZWN0IHRvIHBvc3NpYmxlIHJlbW92YWw6Cj4+Pgo+Pj4gLSBsZyxscDA5N3F4MS1zcGExCj4+
PiAtIHNhbXN1bmcsbHNuMTIyZGwwMS1jMDEKPj4+IC0gc2hhcnAsbGQtZDUxMTZ6MDFiCj4+Cj4+
IE9rIHRvIGRyb3AgdGhlIHNoYXJwIG9uZSBJIGFkZGVkLiAgSXQgc2hvdWxkIGJlIGFibGUgdG8g
YmUgaGFuZGxlZCBieQo+PiB0aGUgKG5ld2lzaCkgZWRwLXBhbmVsLCBidXQgSSB0aGluayB0aGUg
VEkgYnJpZGdlIGRyaXZlciBuZWVkcyBzb21lIHdvcmsKPj4gZm9yIHRoZSBzcGVjaWZpYyBwbGF0
Zm9ybSAobm8gSTJDIGNvbm5lY3Rpb24pIHRvIHZlcmlmeS4KPiAKPiBJcyB0aGUgcGxhdGZvcm0g
c3VwcG9ydGVkIHVwc3RyZWFtPyBJZiBzbywgd2hpY2ggcGxhdGZvcm0gaXMgaXQ/IElzCj4gdGhl
IFRJIGJyaWRnZSBjaGlwIHRoZSB0aS1zbjY1ZHNpODY/IElmIHNvLCBJJ20gY29uZnVzZWQgaG93
IHlvdSBjb3VsZAo+IHVzZSB0aGF0IGJyaWRnZSBjaGlwIHdpdGhvdXQgYW4gaTJjIGNvbm5lY3Rp
b24sIGJ1dCBwZXJoYXBzIEknbQo+IG1pc3VuZGVyc3RhbmRpbmcuIDotUAoKWWVzLCB0aGUgcGxh
dGZvcm0gaXMgdXBzdHJlYW0uICBUaGUgODk5OCBsYXB0b3BzIChjbGFtc2hlbGwpLiAgSXQgaXMg
dGhlIAp0aS1zbjY1c2k4Ni4gIEkgc3VzcGVjdCB0aGUgSTJDIGNvbm5lY3Rpb24gd2FzIG5vdCBw
b3B1bGF0ZWQgZm9yIGNvc3QgCnJlYXNvbnMsIHRoZW4gZGV0ZXJtaW5lZCBpdHMgbXVjaCBtb3Jl
IGNvbnZlbmllbnQgdG8gaGF2ZSBpdCBhcyBldmVyeSAKZ2VuZXJhdGlvbiBhZnRlciB0aGF0IEkn
dmUgc2VlbiBoYXMgdGhlIEkyQy4KCklmIHlvdSBjaGVjayB0aGUgZGF0YXNoZWV0IGNsb3NlbHks
IHRoZSBJMkMgY29ubmVjdGlvbiBpcyBvcHRpb25hbC4gIFlvdSAKY2FuIGFsc28gY29uZmlndXJl
IHRoZSBicmlkZ2UgaW5iYW5kIHVzaW5nIERTSSBjb21tYW5kcy4gIFRoaXMgaXMgd2hhdCAKdGhl
IEZXIGFuZCBXaW5kb3dzIGRvZXMuCgpTbywgdGhlIERUIGJpbmRpbmcgbmVlZHMgdG8gbWFrZSB0
aGUgSTJDIHByb3BlcnR5IG9wdGlvbmFsICh0aGlzIHNob3VsZCAKYmUgYmFja3dhcmRzIGNvbXBh
dGlibGUpLiAgVGhlIGRyaXZlciBuZWVkcyB0byBkZXRlY3QgdGhhdCB0aGUgSTJDIApjb25uZWN0
aW9uIGlzIG5vdCBwcm92aWRlZCwgYW5kIGZhbGwgYmFjayB0byBEU0kgY29tbWFuZHMuICBSZWdt
YXAgd291bGQgCmJlIG5pY2UgZm9yIHRoaXMsIGJ1dCBJIGdvdCBwdXNoYmFjayBvbiB0aGUgcHJv
cG9zYWwuICBUaGVuIEkgZ290IApzaWRldHJhY2tlZCBsb29raW5nIGF0IG90aGVyIGlzc3Vlcy4K
Ci1KZWZmCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
