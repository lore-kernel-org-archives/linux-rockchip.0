Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12696EDF152
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Feb 2026 11:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hLT4wZozwhTZn/SAFzirhAW8Wm3TTrUmHZQ2wBV+XVg=; b=PUCOVPHxkkMRWcfW+mF6yVnEPg
	fIz3sCDsk+cXeOCVIPrsCJPyIvH8RabPQKQz8awCzLHX7pCL6jofJiv9AfZqP4zJss5YApQpuMf5l
	1uKtCgw5Xtx53TjB/r27c5vyXp3NEy7tDIkHQgMwQB1fjlwAR2iHhmZ5mxlVKcbfUsTmACbSPNFgg
	tvPw0lK1n/sfMoVzAik2ZmwKSa3oE8xqkRJYZdpXF8Z/8WxYnT+528q8HHCV00ciAZ+/Xa99Kt3ao
	Kmq9cmDSiWVjgas1DGiOly0qF+nxtEzjcg24p+SryRn4gbP+l2eBvKi9nFM1W1Ez6rhA3GX8ATa20
	9R7g4BhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqr5D-00000003Nbj-0Q3n;
	Fri, 13 Feb 2026 11:11:35 +0000
Received: from mail-m15595.qiye.163.com ([101.71.155.95])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqr59-00000003NaT-0SPJ;
	Fri, 13 Feb 2026 11:11:33 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 341631483;
	Fri, 13 Feb 2026 19:11:25 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add node name for
 RK3588_PD_RKVDEC0/1 and RK3588_PD_VENC0/1
To: Chaoyi Chen <kernel@airkyi.com>
References: <1770950113-19802-1-git-send-email-shawn.lin@rock-chips.com>
 <B5000B8F1001C1D8+040b217f-8ee1-4f96-95ec-e44d140b589d@airkyi.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <9cc9a3c5-55f0-32f6-f166-acfb3a34f0a3@rock-chips.com>
Date: Fri, 13 Feb 2026 19:11:23 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <B5000B8F1001C1D8+040b217f-8ee1-4f96-95ec-e44d140b589d@airkyi.com>
X-HM-Tid: 0a9c56b2d02309cckunm7939042d2d84bd
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkwfT1YdGB1KHUNOH0tMGkpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUJCSU5LVU
	pLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=OVxjcFhfxlWGbRcypca3NKULvA9k3vr8qgD28Xz3XiMdlDokms9vcLxYov5RWRz25mxArw1K+w9wlXlXj93M7OyQATK0tgzfHwbM1oLSWDzwDOO3pFiIzwjPiTYzfoMce54tR1h85ScVLxP/bRGbGcd0mF+rw7xZ/sDLBLs2CQ4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=cfrrzneLGcg5FFdQQt3/q570AODDdBAE3SDOF+o9Z9w=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_031131_655593_A9BA9DC3 
X-CRM114-Status: GOOD (  17.65  )
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgQ2hhb3lpCgrU2iAyMDI2LzAyLzEzINDHxtrO5SAxODozMiwgQ2hhb3lpIENoZW4g0LS1wDoK
PiBIZWxsbyBTaGF3biwKPiAKPiBPbiAyLzEzLzIwMjYgMTA6MzUgQU0sIFNoYXduIExpbiB3cm90
ZToKPj4gVGh1cyB0aGUgYm9hcmQgZHRzIGZpbGVzIGNvdWxkIGFkZCBwcm9wZXJ0eSBmb3IgdGhl
c2Ugbm9kZXMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2st
Y2hpcHMuY29tPgo+PiAtLS0KPiBZb3Ugc2hvdWxkIGFsc28gYWRkIHBtZG9tYWluIGRyaXZlci4K
PiAKPiBJJ3ZlIGVuY291bnRlcmVkIGEgc2ltaWxhciBpc3N1ZSBiZWZvcmUuCj4gRmlubGV5IHRv
bGQgbWUgdG8gdXNlIHRoZSBuZXcgUE1JQywgYW5kIHRoYXQgd291bGQgc29sdmUgdGhlIHByb2Js
ZW0uCj4gTWF5YmUgeW91J3JlIHVzaW5nIHRoZSBzYW1lIG9sZCBQTUlDIGFzIEkgZGlkIDopCj4g
CgpJIGRvbid0IGtub3cgd2hhdCBkb2VzIG5ldyBQTUlDIG1lYW4/IE5ldyBSSzgwNiBkcml2ZXIg
b3IgbmV3IFJLODA2CmhhcmR3YXJlPwoKVGhlIHByb2JsZW0gaXMgdGhlc2UgcG93ZXIgZG9tYWlu
cyByZWx5IG9uIHZvbHRhZ2Ugc3VwcGx5IHdoaWNoIGNvdWxkCmJlIHByb2JlZCBsYXRlIGFmdGVy
IHBtZG9tYWluIGRyaXZlciwgdGhlbiB0aGUgc3lzdGVtIGVuYWJsZXMgdGhlIFBEIGFuZAphY2Nl
c3MgdGhlIElQIHdpdGhvdXQgUEQgYWN0dWFsbHkgZW5hYmxlZChldmVuIHcvbyB2b2x0YWdlIHN1
cHBseQplbmFibGVkKS4KCgoKPiAKPj4KPj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4OC1iYXNlLmR0c2kgfCA4ICsrKystLS0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaQo+PiBpbmRleCA3ZmU5NTkzLi40ZmI4ODg4IDEwMDY0
NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kK
Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpCj4+
IEBAIC05MDcsNyArOTA3LDcgQEAKPj4gICAJCQkJI3NpemUtY2VsbHMgPSA8MD47Cj4+ICAgCQkJ
CSNwb3dlci1kb21haW4tY2VsbHMgPSA8MD47Cj4+ICAgCj4+IC0JCQkJcG93ZXItZG9tYWluQFJL
MzU4OF9QRF9SS1ZERUMwIHsKPj4gKwkJCQlwZF9ya3ZkZWMwOiBwb3dlci1kb21haW5AUkszNTg4
X1BEX1JLVkRFQzAgewo+PiAgIAkJCQkJcmVnID0gPFJLMzU4OF9QRF9SS1ZERUMwPjsKPj4gICAJ
CQkJCWNsb2NrcyA9IDwmY3J1IEhDTEtfUktWREVDMD4sCj4+ICAgCQkJCQkJIDwmY3J1IEhDTEtf
VkRQVV9ST09UPiwKPj4gQEAgLTkxNyw3ICs5MTcsNyBAQAo+PiAgIAkJCQkJcG1fcW9zID0gPCZx
b3Nfcmt2ZGVjMD47Cj4+ICAgCQkJCQkjcG93ZXItZG9tYWluLWNlbGxzID0gPDA+Owo+PiAgIAkJ
CQl9Owo+PiAtCQkJCXBvd2VyLWRvbWFpbkBSSzM1ODhfUERfUktWREVDMSB7Cj4+ICsJCQkJcGRf
cmt2ZGVjMTogcG93ZXItZG9tYWluQFJLMzU4OF9QRF9SS1ZERUMxIHsKPj4gICAJCQkJCXJlZyA9
IDxSSzM1ODhfUERfUktWREVDMT47Cj4+ICAgCQkJCQljbG9ja3MgPSA8JmNydSBIQ0xLX1JLVkRF
QzE+LAo+PiAgIAkJCQkJCSA8JmNydSBIQ0xLX1ZEUFVfUk9PVD4sCj4+IEBAIC05MjYsNyArOTI2
LDcgQEAKPj4gICAJCQkJCXBtX3FvcyA9IDwmcW9zX3JrdmRlYzE+Owo+PiAgIAkJCQkJI3Bvd2Vy
LWRvbWFpbi1jZWxscyA9IDwwPjsKPj4gICAJCQkJfTsKPj4gLQkJCQlwb3dlci1kb21haW5AUksz
NTg4X1BEX1ZFTkMwIHsKPj4gKwkJCQlwZF92ZW5jMDogcG93ZXItZG9tYWluQFJLMzU4OF9QRF9W
RU5DMCB7Cj4+ICAgCQkJCQlyZWcgPSA8UkszNTg4X1BEX1ZFTkMwPjsKPj4gICAJCQkJCWNsb2Nr
cyA9IDwmY3J1IEhDTEtfUktWRU5DMD4sCj4+ICAgCQkJCQkJIDwmY3J1IEFDTEtfUktWRU5DMD47
Cj4+IEBAIC05MzcsNyArOTM3LDcgQEAKPj4gICAJCQkJCSNzaXplLWNlbGxzID0gPDA+Owo+PiAg
IAkJCQkJI3Bvd2VyLWRvbWFpbi1jZWxscyA9IDwwPjsKPj4gICAKPj4gLQkJCQkJcG93ZXItZG9t
YWluQFJLMzU4OF9QRF9WRU5DMSB7Cj4+ICsJCQkJcGRfdmVuYzE6IHBvd2VyLWRvbWFpbkBSSzM1
ODhfUERfVkVOQzEgewo+PiAgIAkJCQkJCXJlZyA9IDxSSzM1ODhfUERfVkVOQzE+Owo+PiAgIAkJ
CQkJCWNsb2NrcyA9IDwmY3J1IEhDTEtfUktWRU5DMT4sCj4+ICAgCQkJCQkJCSA8JmNydSBIQ0xL
X1JLVkVOQzA+LAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
