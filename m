Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA936C54E71
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 May 2025 08:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ta5jiZyrQztQpkv3WWgaYtNZtIH31RX5siiix5cPZM=; b=cskrwdd9qZWa4r
	tW2qHGSNHwQl+CywudpH4MN7U45ZyQbsOa2OlaLnD4w/rJIC5xi0VdLIcpyGlaUWvSfGwx1pX5me+
	Cq71KpxsAej228vHGuqZh6KnxYYJoy+Th4m9DBPttSmuW6j0SJaCY9aYRmUds0046TRhVvuGkgSte
	haYmznFPrighIrnAPwPiBgvalzzcR5RkcZgERXQ80mc/9YxRncUtIIxDoF74ThkJfNqGobNeV0j3x
	Yjh5bgicFPjhMYbF5crIFwxYcBMe+mt2vAV8okP1fKyEizfcaD2nTioDkeNh0P34zKrs4KgeR2XQE
	+a/jECk4rsSsBy68G/4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIk0x-00000005YLb-1WYc;
	Sat, 24 May 2025 08:13:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIjyn-00000005Xxn-3kCb
	for linux-rockchip@lists.infradead.org;
	Sat, 24 May 2025 08:11:43 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54O4CNHN018185
	for <linux-rockchip@lists.infradead.org>; Sat, 24 May 2025 08:11:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tHPIepG7q7mc2xqprg9sD27w/5edJZMQOBa1WzER5So=; b=OU1yU/epswZPLPX3
	EaLw6wAQmJII3aCjx2G8e++6kSShC1uOQNWeZ7FyISn2eh49vSYnb9uPO/l6oTMo
	cSjjfkEP2cKScFD+l0XiDv997FNeF+qIby5KVSfIUNUrODDLvL1WV5dDZLC7e81j
	JLQJQJVtZDIH0wZlxdb3whIyQ36l1woQ7SS3lv1LaOmx6lqwWjLt3C252y7tmkpf
	gVoxXBEtmA+jRfK68RYdQYSjUWuHUnhenLro9YvyNlkMtEzWhwxvn+86rS9nGUgm
	Ft/sZXL/YCiQv5WtTN2rC8HmyJdV/muwiuqSvOwRR/v0RpAKnianiCdVQem5IOjr
	KqKOPA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6vjgaw1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 24 May 2025 08:11:40 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7caee990721so166280885a.1
        for <linux-rockchip@lists.infradead.org>; Sat, 24 May 2025 01:11:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748074299; x=1748679099;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tHPIepG7q7mc2xqprg9sD27w/5edJZMQOBa1WzER5So=;
        b=GMeoq0skdO0L3Pyaa3cLXOiPrTsha2vxOypc6BP1HDbNdZQlDAHTyB7X3IF3xMcklu
         3LoCKuGzgBkz9OMt5+RxVHBWhb0lcbbfC4iQGW0u54iVR5A/Fo7Mbak4Z6gtMAPHWCul
         pXv7y/kGneJ1g+rZWXX/HXyTI+NeXOWqH/elbuVUsnyNd1rhcSt5rR7Kqd6fKweSIuTo
         ZyvfzWo58GLoLuqkEov6bZj9UsxSPNGW/YTZ9xt8dqNYgSpx0+b6nzei70HQbePNLPdE
         z+MeKVhfQ/eCdT49CEwbXHcO6ZHXwXjVORdgSSFCx0FUGk2Q4oTlzehGxjup3OEZc/uY
         Q1Vg==
X-Forwarded-Encrypted: i=1; AJvYcCWT+OhUdceZk4wSCTQD9TBeMysC7pF/ZP6xGfEyYJe3LCptzFY/2bZs9KgpKCPkcB3jgGEY6TcBKi5vhonmPg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyYyxAlE+N4tAjD1R+hO983buRVCCTDbBWmVeP5XsaGLEyU54bE
	g+jOqLJ9BLrd2tpylqOoC5MFQVndSbckDyL7dNmqo4WhMm9WTPNIA44majTfYmOQtKX/Aq4jVhL
	k8T5QPB3Tg1kVy9JGTTDC1jHHdCTGG/W2Pp1c2R+9p6G8ad2Y5XWim5WWa5HkwroNokfV7UGlFf
	M=
X-Gm-Gg: ASbGncsC7RPtNKFhYBduGq36024TJyVFRMSjn3l3vY879NIxbLgisNGpiuoHL36AbIc
	0w+bC1NGa2v3mIyNHfLVB9uO1HDX9KGwylVSmYNNp6C0dUNMdUQ5Nz4lQ1Zh9zgVIhDbIU35PnN
	/ScMrtq27+1epIrDz/c5MX5WHbGbLnFml7X6/9EQrYwpAhwDr42+5stdmeHIfdZQ+Rv9sQ3Pe4Z
	LFpLB8ub2aVEsqyN4p2je/89l1wwxgg6AFAgrT3u68W8FnbG4uBauDFsK0714/DmTm/3RRmpy2Y
	jW0imni8Oq1ejlf8C0fo946GSmQxXSMcP3pLk2rYVrK/Zg0UIRfWMzEwEbXAKBiyEgCm42nhvic
	=
X-Received: by 2002:a05:620a:f15:b0:7ca:f40b:f44b with SMTP id af79cd13be357-7ceecc44cacmr332738585a.50.1748074299694;
        Sat, 24 May 2025 01:11:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGh+51bBBWaUmqP+dgjFmfrbkOFuigtqEW7bD1m0xToXs6orv1NCpLgTxWoAXv/SLi3H/a8SA==
X-Received: by 2002:a05:620a:f15:b0:7ca:f40b:f44b with SMTP id af79cd13be357-7ceecc44cacmr332735885a.50.1748074299340;
        Sat, 24 May 2025 01:11:39 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328085b8efesm41722811fa.73.2025.05.24.01.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 May 2025 01:11:38 -0700 (PDT)
Date: Sat, 24 May 2025 11:11:36 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, neil.armstrong@linaro.org,
        sebastian.reichel@collabora.com, stephen@radxa.com,
        dri-devel@lists.freedesktop.org, hjc@rock-chips.com,
        mripard@kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        yubing.zhang@rock-chips.com, naoki@radxa.com,
        Laurent.pinchart@ideasonboard.com, Andy Yan <andy.yan@rock-chips.com>,
        krzk+dt@kernel.org, robh@kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 2/9] drm/bridge: synopsys: Add DW DPTX Controller
 support library
Message-ID: <osjee6ibus3kuhv7oqqvki2wdxjotjfgcnxarpovvw25jiwhqg@uburpxawk754>
References: <20250403033748.245007-1-andyshrk@163.com>
 <20250403033748.245007-3-andyshrk@163.com>
 <2f4796ad.a2e0.196ceb908b0.Coremail.andyshrk@163.com>
 <hsrec7lguapfxdxulyncypdx5c2rzamcxeoj2kiojw3ukvi5c3@lwr6eriwoxdy>
 <7d4f2ae8.23f1.197014e386f.Coremail.andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7d4f2ae8.23f1.197014e386f.Coremail.andyshrk@163.com>
X-Authority-Analysis: v=2.4 cv=UOXdHDfy c=1 sm=1 tr=0 ts=68317f3c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=Byx-y9mGAAAA:8 a=EUspDBNiAAAA:8
 a=s8YR1HE3AAAA:8 a=rLSYf88_2vispd5-KzUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: rKRYAuPKRkyyAaO1BFru5Zg5yG7RPWZD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI0MDA3MyBTYWx0ZWRfX3d6xa6OXiX4l
 lxAsO3nUZ2rvRX58iqCkcfUjXf72IF83R8WxOJ3LqMIu/+Tqr328upIq+zkO5/VY5WBQ2yaQU7g
 IoVAbx1IasScY1ZywVe8PXtVvfFcNxU23oY6r9FvV6c6ip6N+ySNYjMtm6uE0nMKgcrJF8EPUK1
 VsfUaNLuNlqAutRaXhbrlRoRyqel+wfn3+IZDTUu9EBjtobdqN9cbvN5Qxe4HbXZxOOYrnlP3Ax
 lQkiU+2lUPJTcJjVH4kYlO/fiiRFjX8Nh8p2OiMX5TfyMA+0B7BtAPU7UQFkqHWI56RDccjcjgB
 c86npyTVsXdx1MxJn1zcE/8ukJ1h/Qd3bNFP0ana4B8CeW5RcjkSeqAtk1wJjK/6kAJLZbHErvG
 SXsSW5lftMEEIkaliyKOMDTEzOH7OmIvBb5bsCUAbku1SPVUHnjAh9vts21oCGpUxN83XHos
X-Proofpoint-GUID: rKRYAuPKRkyyAaO1BFru5Zg5yG7RPWZD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-24_04,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 phishscore=0 mlxscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 bulkscore=0 malwarescore=0 impostorscore=0 spamscore=0
 suspectscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505240073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250524_011141_940654_9A2BF651 
X-CRM114-Status: GOOD (  24.58  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU2F0LCBNYXkgMjQsIDIwMjUgYXQgMDM6NTk6NTJQTSArMDgwMCwgQW5keSBZYW4gd3JvdGU6
Cj4gCj4gCj4gSGVsbG8gRG1pdHJ5LAo+IAo+IAo+IOWcqCAyMDI1LTA1LTI0IDE1OjQ2OjE177yM
IkRtaXRyeSBCYXJ5c2hrb3YiIDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+IOWG
memBk++8mgo+ID5PbiBXZWQsIE1heSAxNCwgMjAyNSBhdCAwODoxNTo1NVBNICswODAwLCBBbmR5
IFlhbiB3cm90ZToKPiA+PiBIZWxsbyBEbWl0cnnvvIwKPiA+PiAKPiA+PiAgICAgV291bGQgaXQg
YmUgY29udmVuaWVudCBmb3IgeW91IHRvIGNvbnRpbnVlIHJldmlld2luZyB0aGlzIHBhdGNoIGF0
IHlvdXIgY29udmVuaWVuY2U/Cj4gPj4gT3IgbGV0IG1lIGtub3cgeW91ciBvcGluaW9uIG9uIHRo
aXMgcGF0Y2guCj4gPj4gIAo+ID4+ICAgIFRoZXJlIGlzIHN0aWxsIG9uZSB1bnJlc29sdmVkIGlz
c3VlIGhpZ2hsaWdodGVkIGJ5IHlvdSBpbiB0aGUgZmlyc3QgdmVyc2lvbjogdHJ5IHRvIHVzZSBk
cm1fZHBfcmVhZF9zaW5rX2NvdW50X2NhcAo+ID4+IGluc3RlYWQgb2YgZHdfZHBfaGFzX3Npbmtf
Y291bnQuIEJ1dCB0aGVyZSBpcyBubyByZXNwb25zZSBvbiBteSBwYXRjaCB0cnkgdG8gUGFzcyBk
b3duIGNvbm5lY3RvciB0byBkcm0gYnJpZGdlIGRldGVjdCBob29rWzBdLgo+ID4+ICAgIEkgZG9u
J3Qga25vdyBob3cgdG8gcHJvY2VlZCB3aXRoIHRoaXMgcGF0Y2ggYXQgdGhlIG1vbWVudC4KPiA+
Cj4gPlBsZWFzZSBleGN1c2UgbWUgZm9yIHRoZSBkZWxheS4gSXQgc2VlbXMgTWF4aW1lIGRvZXNu
J3QgbGlrZSB0aGF0IHBhdGNoLAo+ID5idXQgSSBkbyBub3Qgc2VlIGEgdmlhYmxlIGdlbmVyaWMg
YWx0ZXJuYXRpdmUuCj4gPgo+IAo+IAo+IEkgc3RpbGwgd2FudCB0byBleHByZXNzIG15IGdyYXRp
dHVkZSBmb3IgeW91ciBoZWxwLiAKPiBTbywgY291bGQgd2UgcGVyaGFwcyBmaXJzdCBrZWVwIHRo
aXMgcGFydCBhcyBpdCBpcyBub3csIGFuZAo+IHdlIGNhbiBzd2l0Y2ggdG8gdGhlIGdlbmVyaWMg
aGVscGVyIGluIG9uZSBkYXkgd2hlbiB3ZSBmaW5kIGEgcHJvcGVyIHdheSB0byBnZXQgdGhlIGNv
bm5lY3RvciA/Cj4gCgpZZXMuIEkgd2lsbCB0YWtlIGEgbG9vayBhdCB0aGUgc2VyaWVzIGluIG9u
ZSBvZiB0aGUgZm9ydGhjb21pbmcgZGF5cy4KCj4gCj4gPj4gCj4gPj4gCj4gPj4gWzBdaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjUwMzIxMDg1MzQ1LjEzNjM4MC0xLWFuZHlz
aHJrQDE2My5jb20vCj4gPj4gCj4gPj4gVGhhbmsgeW91Lgo+ID4+ICAgCj4gPj4gQXQgMjAyNS0w
NC0wMyAxMTozNzozMCwgIkFuZHkgWWFuIiA8YW5keXNocmtAMTYzLmNvbT4gd3JvdGU6Cj4gPj4g
PkZyb206IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPiA+PiA+CgotLSAKV2l0
aCBiZXN0IHdpc2hlcwpEbWl0cnkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
