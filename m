Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAABBD609D5
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Nov 2024 11:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b5zjZeoytQjQ/7zWePMJPg0GRevkf4S4fxYcthkcaP0=; b=tQEMEhMerPtDBhI7Ivy8bIZn3G
	RfeOr/zOn/df7hAO8F6nqEnhrCo0sS43vXubzIjRvKPnTPa6Zc4/5Xfa/rrNhJQuqJOHg3DsoX/+w
	n1B0EMTtudYbmxBpUFlcEYHdvv1cWsRhyzIKZ0a0lewr1NGaQmStN3+N/z3aDvsI60pCsleR9bZOu
	EFBnVVqkcUgIvARNsO3VaWoT25qUi7cKjDZAWzxyDuhtYSGcfMB/14KLxpqKpjcMzgSigHxYMDkx5
	WeEfwUq4yOJo1YWnTa3eR4aQpFbJmayi3ZfoaiVTjn0Xijcawuxg7o+alug/zO/mOJPB+hSfIapf+
	XmQIrMtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGFts-0000000CxFH-48bY;
	Wed, 27 Nov 2024 11:08:04 +0000
Received: from mail-m49194.qiye.163.com ([45.254.49.194])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGFmO-0000000Cvgj-15xH;
	Wed, 27 Nov 2024 11:00:22 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3fe683f3;
	Wed, 27 Nov 2024 19:00:10 +0800 (GMT+08:00)
Message-ID: <8df0acc8-b7aa-453f-b55c-30144f51d7cf@rock-chips.com>
Date: Wed, 27 Nov 2024 19:00:10 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 04/10] phy: phy-rockchip-samsung-hdptx: Add support for
 eDP mode
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
References: <20241127075157.856029-1-damon.ding@rock-chips.com>
 <20241127075157.856029-5-damon.ding@rock-chips.com>
 <4260470.1IzOArtZ34@diego>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <4260470.1IzOArtZ34@diego>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxgZQ1ZIQ0tCTx0ZHxlDHR5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a936d4752a703a3kunm3fe683f3
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NRA6Lgw5CDIpHS5NEwE3NhMU
	ChYaCh9VSlVKTEhJTEtOSUpJTENMVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJSUNPNwY+
DKIM-Signature: a=rsa-sha256;
	b=MHKppqx3/69QuoNhREUlt7wo6qUNbztr929L0BnEn2+9UfVCaFP8Pa0GA4fZZ92lKe+e0VQmieBZpCBg75bzcV0dR7PpPw1l8coEQLKAFbFB7lTzqcHTw1KeCKSnVxEtDGd6zJvbgLCQtA1pTrUMzV+fyCIcN/UadJcRfpp7tzA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=GgVLM+pxB0mTT4Xgy0u5pynEp9OkHXXnOP4d8il9bhA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_030020_792847_D0BDFA5C 
X-CRM114-Status: GOOD (  22.31  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa286CgpPbiAyMDI0LzExLzI3IDE3OjI5LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBI
aSBEYW1vbiwKPiAKPiBBbSBNaXR0d29jaCwgMjcuIE5vdmVtYmVyIDIwMjQsIDA4OjUxOjUxIENF
VCBzY2hyaWViIERhbW9uIERpbmc6Cj4+IEFkZCBiYXNpYyBzdXBwb3J0IGZvciBSQlIvSEJSL0hC
UjIgbGluayByYXRlcywgYW5kIHRoZSB2b2x0YWdlIHN3aW5nIGFuZAo+PiBwcmUtZW1waGFzaXMg
Y29uZmlndXJhdGlvbnMgb2YgZWFjaCBsaW5rIHJhdGUgaGF2ZSBiZWVuIHZlcmlmaWVkIGFjY29y
ZGluZwo+PiB0byB0aGUgZURQIDEuMyByZXF1aXJlbWVudHMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6
IERhbW9uIERpbmcgPGRhbW9uLmRpbmdAcm9jay1jaGlwcy5jb20+Cj4+IC0tLQo+IAo+IFsgLi4u
IGh1Z2UgYmxvY2sgb2YgRFAgcGh5IHN1cHBvcnQgLi4uXQo+IAo+IHllcyB0aGF0IGJsb2NrIHdh
cyBodWdlLCBidXQgSSBhbHNvIGRvbid0IHNlZSBhIHdheSB0byBzcGxpdCB0aGF0IHVwIGluIGEK
PiB1c2VmdWwgd2F5LCBzbyBpdCBzaG91bGQgYmUgZmluZS4KPiAKCkFzIGZvciB0aGUgaHVnZSBi
bG9jayBvZiBEUCBwaHkgc3VwcG9ydCwgSSB3aWxsIHRyeSB0byB1c2UgdGhlIGV4aXN0aW5nIApy
a19oZHB0eF9tdWx0aV9yZWdfd3JpdGUoKSB0byBzZXQgcmVncyBpbiBuZXh0IHZlcnNpb24sIG1h
eWJlIHRoZSB3YXkgCmNhbiBtYWtlIHRoZSBjb2RlcyBtb3JlIGNvbmNpc2UuCgo+IAo+PiArc3Rh
dGljIGludCBya19oZHB0eF9waHlfc2V0X21vZGUoc3RydWN0IHBoeSAqcGh5LCBlbnVtIHBoeV9t
b2RlIG1vZGUsCj4+ICsJCQkJIGludCBzdWJtb2RlKQo+PiArewo+PiArCXJldHVybiAwOwo+PiAr
fQo+IAo+IEkgdGhpbmsgaXQgbWlnaHQgbWFrZSBzZW5zZSB0byBnbyB0aGUgc2FtZSB3YXkgYXMg
dGhlIERDUEhZIGFuZCBhbHNvCj4gbmFuZW5nIGNvbWJvcGh5LCB0byB1c2UgI3BoeS1jZWxscyA9
IDEgdG8gc2VsZWN0IHRoZSBwaHktbW9kZSB2aWEgRFQgLgo+IAo+IFNlZSBbMF0gZm9yIFNlYmFz
dGlhbnMgaW5pdGlhbCBzdWdnZXN0aW9uIHJlZ2FyZGluZyB0aGUgREMtUEhZLgo+IFRoZSBuYW5l
bmcgY29tYm9waHkgYWxyZWFkeSB1c2VzIHRoYXQgc2NoZW1lIG9mIG1vZGUtc2VsZWN0aW9uIHRv
by4KPiAKPiBUaGVyZSBpcyBvZiBjb3Vyc2UgdGhlIGlzc3VlIG9mIGJhY2t3YXJkcy1jb21wYXRp
YmlsaXR5LCBidXQgdGhhdCBjYW4gYmUKPiB3b3JrZWQgYXJvdW5kIGluIHRoZSBiaW5kaW5nIHdp
dGggc29tZXRoaW5nIGxpa2U6Cj4gCj4gICAnI3BoeS1jZWxscyc6Cj4gICAgICBlbnVtOiBbMCwg
MV0KPiAgICAgIGRlc2NyaXB0aW9uOiB8Cj4gICAgICAgIElmICNwaHktY2VsbHMgaXMgMCwgUEhZ
IG1vZGUgaXMgc2V0IHRvIFBIWV9UWVBFX0hETUkKPiAgICAgICAgSWYgI3BoeS1jZWxscyBpcyAx
IG1vZGUgaXMgc2V0IGluIHRoZSBQSFkgY2VsbHMuIFN1cHBvcnRlZCBtb2RlcyBhcmU6Cj4gICAg
ICAgICAgLSBQSFlfVFlQRV9IRE1JCj4gICAgICAgICAgLSBQSFlfVFlQRV9EUAo+ICAgICAgICBT
ZWUgaW5jbHVkZS9kdC1iaW5kaW5ncy9waHkvcGh5LmggZm9yIGNvbnN0YW50cy4KPiAKPiBQSFlf
VFlQRV9IRE1JIG5lZWRzIHRvIGJlIGFkZGVkIHRvIGluY2x1ZGUvZHQtYmluZGluZ3MvcGh5L3Bo
eS5oCj4gYnV0IFBIWV9UWVBFX0RQIGlzIGFscmVhZHkgdGhlcmUuCj4gCj4gVGhhdCB3YXkgd2Ug
d291bGQgc3RhbmRhcmRpemUgb24gb25lIGZvcm0gb2YgYWNjZXNzaW5nIHBoeS10eXBlcwo+IG9u
IHJrMzU4OCA6LSkgLgo+IAo+IEFsc28gc2VlIHRoZSBNZWRpYXRlayBDU0kgcnggcGh5IGRvaW5n
IHRoaXMgdG9vIGFscmVhZHkgWzFdCj4gCj4gCj4gSGVpa28KPiAKPiBbMF0gaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvdWRhZDRxZjNvN2t0NDVudXo2Z3hzdnNtcHJoNHJu
eWZ4Zm9nb3BtaWg2dWN6bml6aWhAN29qMmpybmxmb256Lwo+IFsxXSBodHRwczovL2dpdC5rZXJu
ZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21lZGlhdGVrLG10ODM2NS1jc2kt
cngueWFtbAo+IAoKSXQgaXMgcmVhbGx5IGEgbmljZSB3YXkgdG8gc2VwYXJhdGUgSERNSSBhbmQg
RFAgbW9kZXMuCgo+IAo+IAo+IAo+IAoKQmVzdCByZWdhcmRzLApEYW1vbgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
