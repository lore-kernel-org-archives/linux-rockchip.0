Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84AC6CCD199
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KzTEXcseuGiHob0ONnz5WPsUtW3mLVKc1A2vd5xxmTs=; b=3jXjqCxkP5pBys
	2EVY2U8vYiElPRKiSV38u8nwRA8lAg+qKR9TgzLW6Y0j4FrQ6JoO1eM/sdDcmu7yGKB4cf9Xr0egC
	ABKiIaqdHRaswBbheB/pkxg2AtXwO6AlN1KVpIbygcoiF0yDDDEGTMAFoF1ebU4/NB5PlwrccGOR+
	7bSgeIjQmO9dn7hpuJN1GbMy/ZIr+FtLc/DF1fIUHH6egZlOafi5NHbheeDxP5xJrjFGRlCKebspF
	aFoAsP4wcBFknLpxxVuWc2AcDpp0nhOgCp7MpHpEmG1aYR6UJ7ZA+vYNmrTHHD/4V8QdpZTCt40kf
	ylZWBF+sQuOosyfJzHnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAl8F-0000000CLH9-1V15;
	Mon, 20 Oct 2025 08:20:43 +0000
Received: from mail-m158252.netease.com ([47.251.158.252])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAl8B-0000000CLEX-2qUn;
	Mon, 20 Oct 2025 08:20:41 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 267e17090;
	Mon, 20 Oct 2025 16:20:32 +0800 (GMT+08:00)
Message-ID: <77be8aa2-f91b-4291-b3f3-73ae97a2c495@rock-chips.com>
Date: Mon, 20 Oct 2025 16:20:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Grzegorz Sterniczuk <grzegorz@sternicz.uk>,
 Dragan Simic <dsimic@manjaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH] arm64: dts: rockchip: fix eMMC corruption on NanoPC-T6
 with A3A444 chips
To: Tianling Shen <cnsztl@gmail.com>, Hugh Cole-Baker <sigmaris@gmail.com>
References: <20251017073954.130710-1-cnsztl@gmail.com>
 <d70c0eb5-9aa2-47b1-8205-81b724180319@rock-chips.com>
 <08911ae2-fef3-432d-a236-d820c9cb67ac@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <08911ae2-fef3-432d-a236-d820c9cb67ac@gmail.com>
X-HM-Tid: 0a9a00b4af9a09cckunma851ec124e48ea
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx0dS1ZCH05CSk1NGktOGBpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=FYMRm0h1xoQknRUP34oGrB1pA/MPaKTWnA15xR/xfT/uxUzm/R3VAhuGIvU7aAoEqk+PnXghGlYL7e3oETmsIeuQBW+Gd35FhFLL1e6TMR6nodDCFy0foDq1PeNgNyHlhIKYanQcemlRddnjKuY/VgAkZxmNLsHxuRebDevp9p0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=8h2l1N5Cg8vyKobtn2Pe4zUGVCtgOR3YdwiahusUFj0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_012040_228523_34477F0E 
X-CRM114-Status: GOOD (  17.01  )
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

KyBIdWdoIENvbGUtQmFrZXIgd2hvIHNlZW1zIGFsc28gc3VmZmVyIGZyb20gdGhpcyBpc3N1ZQoK
5ZyoIDIwMjUvMTAvMjAg5pif5pyf5LiAIDEyOjQ0LCBUaWFubGluZyBTaGVuIOWGmemBkzoKPiBI
aSBTaGF3biwKPiAKPiBPbiAyMDI1LzEwLzIwIDk6NTMsIFNoYXduIExpbiB3cm90ZToKPj4gSGkg
VGlhbmxpbmcKPj4KPj4gT24gMjAyNS8xMC8xNyBGcmlkYXkgMTU6MzksIFRpYW5saW5nIFNoZW4g
d3JvdGU6Cj4+PiBGcm9tOiBHcnplZ29yeiBTdGVybmljenVrIDxncnplZ29yekBzdGVybmljei51
az4KPj4+Cj4+PiBTb21lIE5hbm9QQy1UNiBib2FyZHMgd2l0aCBBM0E0NDQgZU1NQyBjaGlwcyBl
eHBlcmllbmNlIEkvTyBlcnJvcnMgYW5kCj4+PiBjb3JydXB0aW9uIHdoZW4gdXNpbmcgSFM0MDAg
bW9kZS4gRG93bmdyYWRlIHRvIEhTMjAwIG1vZGUgdG8gZW5zdXJlCj4+PiBzdGFibGUgb3BlcmF0
aW9uLgo+Pgo+PiBNYXkgSSBhc2sgeW91IHRvIHRlc3QgYW5vdGhlciBwYXRjaCBJIGp1c3QgcG9z
dGVkIHRvIHNlZSBpZiBpdCBmaXhlcwo+PiB5b3VyIGlzc3VlPwo+Pgo+PiBodHRwczovL3BhdGNo
d29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtbW1jLyAKPj4gcGF0Y2gvMTc2MDkyNDk4MS01
MjMzOS0xLSBnaXQtc2VuZC1lbWFpbC1zaGF3bi5saW5Acm9jay1jaGlwcy5jb20vCj4gCj4gVGhh
bmsgeW91IGZvciB0aGUgcGF0Y2ghIEkgd2lsbCBhc2sgbXkgZnJpZW5kIHRvIHRlc3QgaXQgYnV0
IGhlIHVzZXMgCj4gdGhpcyBib2FyZCBhcyBhIGhvbWUgcm91dGVyLCBzbyBpdCBtYXkgdGFrZSBh
IGZldyBkYXlzIG9yIHdlZWtzIHRvIAo+IHJlcG9ydCB0aGUgcmVzdWx0LgogPiA+IFRoYW5rcywK
PiBUaWFubGluZy4KPiAKPj4KPj4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBHcnplZ29yeiBTdGVy
bmljenVrIDxncnplZ29yekBzdGVybmljei51az4KPj4+IFNpZ25lZC1vZmYtYnk6IFRpYW5saW5n
IFNoZW4gPGNuc3p0bEBnbWFpbC5jb20+Cj4+PiAtLS0KPj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4LW5hbm9wYy10Ni5kdHNpIHwgMyArLS0KPj4+IMKgIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtbmFub3BjLXQ2LmR0c2kgYi8g
Cj4+PiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMtdDYuZHRzaQo+
Pj4gaW5kZXggZmFmZWFiZTlhZGY5Li41ZjYzZjM4ZjczMjYgMTAwNjQ0Cj4+PiAtLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMtdDYuZHRzaQo+Pj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtbmFub3BjLXQ2LmR0c2kKPj4+IEBA
IC03MTcsOCArNzE3LDcgQEAgJnNkaGNpIHsKPj4+IMKgwqDCoMKgwqAgbm8tc2Q7Cj4+PiDCoMKg
wqDCoMKgIG5vbi1yZW1vdmFibGU7Cj4+PiDCoMKgwqDCoMKgIG1heC1mcmVxdWVuY3kgPSA8MjAw
MDAwMDAwPjsKPj4+IC3CoMKgwqAgbW1jLWhzNDAwLTFfOHY7Cj4+PiAtwqDCoMKgIG1tYy1oczQw
MC1lbmhhbmNlZC1zdHJvYmU7Cj4+PiArwqDCoMKgIG1tYy1oczIwMC0xXzh2Owo+Pj4gwqDCoMKg
wqDCoCBzdGF0dXMgPSAib2theSI7Cj4+PiDCoCB9Owo+Pgo+IAo+IAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
