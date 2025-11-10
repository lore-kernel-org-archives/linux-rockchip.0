Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A87F2CCFA13
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 10:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DgkRwPfRUX6YIhWhulCfZmqRw7Oarwfqb2WLojpbNxY=; b=w04M4IbmFckxAl
	/Qe5r+NuDm0dCugGyTp3aqOJFmCrbWPiDZ7Us5obX3RZgjhrcBqPSj/ZFts8UF6wKnmOc0s70wkd5
	ae7XAPcQAp5b+b7j1FLD01+QPjjI8lInk5yiGwnlLB3iUdaNCnnD0D3OlbWgWrqhainVjbWDBEYVl
	pZgH4HPA1HVMUTuamQOB0559TWKHC55bcXoAgb5azstNBVVNkGibVPPWa/H1t0QzjQv3NPg6F+0M0
	azN/nlxC84taVOUWRnFE+swyYql74LKxkLEjFLs+x/QxSUKyQP0/1w3/mo33XnJyADACTnLZoc1eb
	BBymnkKNebigUBSXJYxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIP0f-00000005AyB-2oeA;
	Mon, 10 Nov 2025 10:20:29 +0000
Received: from smtpbgjp3.qq.com ([54.92.39.34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIP0Z-00000005AwR-2xqa
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Nov 2025 10:20:25 +0000
X-QQ-mid: zesmtpip3t1762769971t1b092a36
X-QQ-Originating-IP: iFTO6SgugK5NI2gnIyOrbmy1WQoC/Gu/2N1bNXVyuH8=
Received: from [IPV6:240f:10b:7440:1:64e0:6ba: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 10 Nov 2025 18:19:28 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4167295860379743796
Message-ID: <5763F732CB44709F+2774ec07-a035-4a4c-81f5-1bcf603945c9@radxa.com>
Date: Mon, 10 Nov 2025 19:19:26 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] arm64: dts: rockchip: Fix microSD card detect for
 Radxa ROCK 5 ITX
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
 sebastian.reichel@collabora.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251110030036.825150-1-naoki@radxa.com>
 <EECF7629320EEEDD+03c6ee06-4351-4150-b1b0-957d5cfc3d6d@radxa.com>
 <2242815.irdbgypaU6@diego>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <2242815.irdbgypaU6@diego>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: N10mAYB91oMgvTLyy8U7YoBndI9Dvbb7VCD12B19aLYxtmWVBUv/5sAe
	jtFgmRqhDAZu/4vtcvah/XH2WyjXeR3AWi6eozBYJSc/wxljIEqVCo4QxrhPQRile8by93E
	cw9ZYF0hmDHaFlcxfOHE6qcHF8cVPa63bQ065w128sHtN34NiVolUy0n7JGpJPhAEufG3pe
	2O3My4d3D8qlXBaGVkAHzRf54iq5p61IJHa3lKk10SY58+tTb1Lnx8DeJOZ3/6LXNsu25bZ
	a1fX3PO1rUp/3fmD4yZhBK4jagkjic1VVtti8TqiKs7vYfchC/cXWjDecxSp/HiO8EZdsIS
	N4eTWMX03ttOj1TClzbEwhhNxdGb9FmThHAu913OcgoVAbFjpcqhOp6M8AO0LwqcSYMC/Cl
	MxGg/rbJpvCaIwTa22uIuiN55YtdznYjnl1wAah7c6H1qhF4ZM1cFpQu/vnZbJDZddezPzO
	xFfV/PlvvOqsEGzDRUezyBCSGKKOsAu9Oc2lMx012iq5786/+Aflzc+CIuPSpXAA9WZKxbT
	dQSm9gv08ryUxrNnRUacpyUGbthIj8ZjZTrF7zObwSwgYJepB+x7xSfAEyiBGfmIpRpkQrC
	7QJnOWHB+BjzSw0WojtmT8UnRktjFld/yfPZh+abY4R2vqBh+tbyEx+xS0AecTNDbmoBYQR
	1rA6FxpqkyFxfi0/omHHASO1/NM92z0DMlTiJTFAn6gkVtMfhg/iia6bI6+qfWNZihBFmew
	jawaUCKYygrrXWJsT0Pat1er+H13g+/USAg8ow1yWFovELaKarfk7jjTeXNvPr6WozKjoFb
	3v6IlK4aEKk/7SD6CHG/9GCATr1SiBKphNVNwD3pZtb8jDmHcwlRjCgKW38dPf83Kha9U1W
	pHivUyB8rAm2kwnp3YzFMTj8HNwrMfMrxW14yxdkfxnC1BETLe1+XS1zcAgsd+9gSMJPbK7
	PzZS+JHJ3HyfZf+Rqz+R28tw8xIFU7ESW0TrkgO5pSb834gISGjR62Yxydc+/0JCQRah7WN
	o+rPfbyw==
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_022024_039993_5634CF45 
X-CRM114-Status: GOOD (  11.54  )
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

SGkgSGVpa28sCgpPbiAxMS8xMC8yNSAxOTowNSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGks
Cj4gCj4gQW0gTW9udGFnLCAxMC4gTm92ZW1iZXIgMjAyNSwgMDQ6MTY6MzcgTWl0dGVsZXVyb3DD
pGlzY2hlIE5vcm1hbHplaXQgc2NocmllYiBGVUtBVU1JIE5hb2tpOgo+PiBPbiAxMS8xMC8yNSAx
MjowMCwgRlVLQVVNSSBOYW9raSB3cm90ZToKPj4+IER1ZSB0byB0aGUgZGlzY3Vzc2lvbiBhYm91
dCBjZC1ncGlvcyBhbmQgc2RtbW1jX2RldCBwaW4KPj4+IGZ1bmN0aW9uYWxpdHlbMV0sIGl0IHdv
dWxkIGJlIGJldHRlciB0byB1c2UgY2QtZ3Bpb3MgZm9yIG5vdy4KPj4+Cj4+PiBbMV0gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvMjAyNDA5MTIxNTI1MzguMS5JODU4YzJh
MGJmODM2MDZjOGI1OWJhMWFiNjk0NDk3OGEzOThkMmFjNUBjaGFuZ2VpZC9ULyN1Cj4+Pgo+Pj4g
Rml4ZXM6IDMxMzkwZWI4ZmZiZjIgKCJhcm02NDogZHRzOiByb2NrY2hpcDogYWRkIFJPQ0sgNSBJ
VFggYm9hcmQiKQo+Pj4gU2lnbmVkLW9mZi1ieTogRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEu
Y29tPgo+Pj4gLS0tCj4+PiAgICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1y
b2NrLTUtaXR4LmR0cyB8IDkgKysrKysrKystCj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNS1pdHguZHRzIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01LWl0eC5kdHMKPj4+IGluZGV4IGJjODE0MDg4M2Rl
NDcuLjM5MWM2NDgyZThlZTMgMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OC1yb2NrLTUtaXR4LmR0cwo+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODgtcm9jay01LWl0eC5kdHMKPj4+IEBAIC02NzAsNiArNjcwLDEyIEBA
IGxlZF9waW5zOiBsZWQtcGlucyB7Cj4+PiAgICAJCX07Cj4+PiAgICAJfTsKPj4+ICAgIAo+Pj4g
KwltbWMgewo+Pj4gKwkJc2RtbWNfZGV0X2dwaW86IHNkbW1jLWRldC1ncGlvIHsKPj4+ICsJCQly
b2NrY2hpcCxwaW5zID0gPDAgUktfUEE0IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+
Pj4gKwkJfTsKPj4+ICsJfTsKPj4+ICsKPj4KPj4gSSBnb3QgZm9sbG93aW5nIGVycm9yOgo+Pgo+
PiAkIG1ha2UgQ0hFQ0tfRFRCUz15IHJvY2tjaGlwL3JrMzU4OC1yb2NrLTUtaXR4LmR0Ygo+PiAg
ICAgVVBEICAgICBpbmNsdWRlL2NvbmZpZy9rZXJuZWwucmVsZWFzZQo+PiAgICAgRFRDIFtDXSBh
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTUtaXR4LmR0Ygo+PiAvaG9t
ZS9yYWR4YS9saW51eC9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTUt
aXR4LmR0YjoKPj4gbW1jOiBzZG1tYy1kZXQtZ3Bpbzogeydyb2NrY2hpcCxwaW5zJzogW1swLCA0
LCAwLCAyNzBdXSwgJ3BoYW5kbGUnOiAxNDV9Cj4+IGlzIG5vdCBvZiB0eXBlICdhcnJheScKPj4g
CWZyb20gc2NoZW1hICRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvZ3Bpby9ncGlv
LWNvbnN1bWVyLnlhbWwjCj4+Cj4+IFdoYXQncyB3cm9uZz8KPiAKPiB0aGUgcHJvYmxlbSBpcyB0
aGUgIi1ncGlvIiBpbiB0aGUgcGluY3RybCBub2RlLW5hbWUsd2hpY2ggdHJpZ2dlcnMKPiBhIHBh
dHRlcm4gbWF0Y2hpbmcgYWdhaW5zdCBhIG5vcm1hbCBncGlvcyBwcm9wZXJ0eS4KPiAKPiBTbyBp
ZGVhbGx5IHJlbmFtZSBzZG1tYy1kZXQtZ3BpbyB0byBzZG1tYy1kZXQtcGluIG9yIHNvLgoKc2Rt
bWMtZGV0LXBpbiB3b3JrcyEgVGhhbmtzIQoKSSdsbCBzZW5kIHYyIHdpdGggdGhpcyBmaXguCgpC
ZXN0IHJlZ2FyZHMsCgotLQpGVUtBVU1JIE5hb2tpClJhZHhhIENvbXB1dGVyIChTaGVuemhlbikg
Q28uLCBMdGQuCgo+IEhvcGUgdGhhdCBoZWxwcwo+IEhlaWtvCj4gCj4gCj4gCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
