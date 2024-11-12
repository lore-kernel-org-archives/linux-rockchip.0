Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 686A9D41D60
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Nov 2024 06:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F1XRJjTtif6CQSKtExE9UwZ/LfwFdPXJZNClIe74IOc=; b=Xyj3zA8ZaEUVUa
	nbCx3QcdmESFRcEvNq+B2e/LWZO3L+zSJ0aHnGANy8hOh2KRB/ZU4t1bTUUUQQXsXfMgwBqgaL1bQ
	PWGQQCuA4JORUOaENMeP9SJAoW44Xb69NIWsKjuNQZL3nINpK5xrw2KOsldqU/ZTxKXLoGpcPZvSS
	jpWlpkUkPB3dXAnmxjDOLo6eEYu89at8DguMsgIskLsSNA7enRMdT+bk+U0IqEtHnw/8TFITuXRGs
	OZgXWh5sft6DmYO+/joP8lDAMxZx+M9twXqGukChaMaNMvvD/N6i1y0ECDnBuIpqAs3sbK/ke916Z
	REK+eNtWfq2BPlzZWTjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAklV-00000002NR7-2nUV;
	Tue, 12 Nov 2024 06:52:41 +0000
Received: from mail-m3282.qiye.163.com ([220.197.32.82])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAkkP-00000002NHm-3pU6
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Nov 2024 06:51:36 +0000
Received: from [172.16.12.45] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 27ec4bcb;
	Tue, 12 Nov 2024 14:51:22 +0800 (GMT+08:00)
Message-ID: <67dc87c0-d963-4827-8da8-9b4f4b579a0d@rock-chips.com>
Date: Tue, 12 Nov 2024 14:51:22 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Rob Herring <robh+dt@kernel.org>,
 "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J . Wysocki" <rafael@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, YiFeng Zhao <zyf@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org
Subject: Re: [PATCH v4 7/7] scsi: ufs: rockchip: initial support for UFS
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <1730705521-23081-1-git-send-email-shawn.lin@rock-chips.com>
 <1730705521-23081-8-git-send-email-shawn.lin@rock-chips.com>
 <20241109121249.vncqbacvpnpf6d34@thinkpad>
 <13ad21bb-9f5a-4a4b-8b65-55243f6fe817@rock-chips.com>
 <20241112064354.g634ca5w2gagfyko@thinkpad>
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20241112064354.g634ca5w2gagfyko@thinkpad>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR4dSVZJSxkYT05ITk8fGE9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a931f2423e109cckunm27ec4bcb
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OTI6Pww5OTIeMBkDMx4QAREU
	H0swFEtVSlVKTEhKSEJPSUNPSk5MVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUJJQzcG
DKIM-Signature: a=rsa-sha256;
	b=Jm6+WYQihaExmuzwzQSBDbD2+vhMxKDsyzJ53n1wyopYRaO8YqDi6PohavebXpmDDpyMuKAe6kh4oFl0yTQC5IOwCe1LJ4TjcmP+Y/IpyKPNpu7Eht5mMDyaLEftv3uXDwCBhPr2P+P1Ar2/4sTozkDGFB1ieibUrOqSYNBxkj4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=7DvZ0EaaGDr971+oClLMaAcgcjY9xXaBYV/7GJSzEYg=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241111_225134_481864_E551DC98 
X-CRM114-Status: GOOD (  12.15  )
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

5ZyoIDIwMjQvMTEvMTIgMTQ6NDMsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSDlhpnpgZM6Cj4gT24g
TW9uLCBOb3YgMTEsIDIwMjQgYXQgMDk6MTA6MzlBTSArMDgwMCwgU2hhd24gTGluIHdyb3RlOgo+
IAo+IFsuLi5dCj4gCj4+Pj4gK3N0YXRpYyB2b2lkIHVmc19yb2NrY2hpcF9yZW1vdmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4+PiArewo+Pj4+ICsJc3RydWN0IHVmc19oYmEgKmhi
YSA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpOwo+Pj4+ICsJc3RydWN0IHVmc19yb2NrY2hp
cF9ob3N0ICpob3N0ID0gdWZzaGNkX2dldF92YXJpYW50KGhiYSk7Cj4+Pj4gKwo+Pj4+ICsJcG1f
cnVudGltZV9mb3JiaWQoJnBkZXYtPmRldik7Cj4+Pj4gKwlwbV9ydW50aW1lX2dldF9ub3Jlc3Vt
ZSgmcGRldi0+ZGV2KTsKPj4+Cj4+PiBXaHkgZG8geW91IG5lZWQgdGhlc2U/IFlvdSBhcmUgbm90
IGluY3JlbWVudGluZyB0aGUgcmVmY291bnQgaW4gcHJvYmUoKSBhbmQKPj4+IHRoZXJlIGlzIG5v
IGF1dG8gUE0gaW52b2x2ZWQuCj4+Cj4+IE9oLCBpdCB3YXMgYSBsZWZ0b3ZlciBmcm9tIGZvcm1l
ciB2ZXJzaW9uIEkgaGF2ZW4ndCBub3RpY2VkLiBXaWxsCj4+IHJlbW92ZS4KPj4KPiAKPiBJJ3Zl
IHNlbnQgYSBzZXJpZXMgWzFdIHRoYXQgYWRkcmVzc2VzIHRoZSBydW50aW1lIFBNIGlzc3Vlcy4g
Q291bGQgeW91IHBsZWFzZQo+IGdpdmUgaXQgYSB0cnkgYW5kIGdpdmUgeW91ciB0ZXN0ZWQtYnkg
bWF5YmU/CgpTdXJlLCBJIHdpbGwgZ2l2ZSBpdCBhIHRyeSwgdGhhbmtzLgoKPiAKPiAtIE1hbmkK
PiAKPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtc2NzaS8yMDI0MTExMS11ZnNf
YnVnX2ZpeC12MS0wLTQ1YWQ4YjYyZjAyZUBsaW5hcm8ub3JnLwo+IAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
