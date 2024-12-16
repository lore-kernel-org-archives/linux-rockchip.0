Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FE1BE77180
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 16:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q+y7/MdvCBPYv9Gh4MsQ7G8BvYbpuNGGux3V7EXtKQE=; b=jYLbI3BY8sChbDiGN14gwKcv/p
	z+18f7r4oCG5/aLJoQtLOG+D6r2Fa9jmkRClFUFE7+KXgvQWJEPDEcamx8/aEK/oxo8Pjfs5PYzTh
	mhGiWDGwy1W5SIY3+ke2RnDtFInrUZggKNsXB0BJzvfsCqFRStKQkaC+Av71wK4cKbgdp14ueWD+O
	uLW+sVM3azRXOfMi+HtkdHDX/FpDqqVEA7VMsbPsKoz9ymUCR0gr9hplqhUbH7EnHuHSfM35jVMmK
	W2YsaKmmubSJzGAfowNSQdqxa8CY1bxe5FVRgcRoinvbSZ/UL1cUQbG0CI0IQKx5gAu9k+SwUQNz8
	u6q1m2bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNE0O-0000000AbVL-49lY;
	Mon, 16 Dec 2024 16:31:36 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNDyF-0000000Ab00-32Ms;
	Mon, 16 Dec 2024 16:29:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D7E35A41875;
	Mon, 16 Dec 2024 16:27:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01627C4CED4;
	Mon, 16 Dec 2024 16:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734366562;
	bh=EH/ufdT5EDnouKnjjdGAMRabPTfJmALbDN0nfMT7ml4=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=rrtCSjKhQyNdd9mpknLtAP4kBqJbnxw5r+4pSydUFfCnyaaeVrOIZLIwLkZvdxNgY
	 NFTPjBZca0lbeQXdkmx+w5SPcmnXa21FW6x4Px+LP5NcKXwy6EnPBl38Lq1eNYLrIQ
	 YJpg1rGy4b7X2O9sNp1hSsQ62Hxd1yftj/QvktYmyXwNN3V/MzAt9L24haWHuJ6RbY
	 DpDSL8xg6Cg14s+3W9/xD3ClsY2s3FdU33XGcGYbgUPnb+uZ0r8r/5hrrNTD5XIbbb
	 9Kj2ONWn4hfQwtLT0a7+dtM9o/7gnmCfTKZ3a81mzL/V3v4hagmIPqQMfpj3tldNlx
	 K6kPADVCFuR4A==
Date: Mon, 16 Dec 2024 10:29:19 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: krzk+dt@kernel.org, linux-pm@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 conor+dt@kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, heiko@sntech.de
To: Shimrra Shai <shimrrashai@gmail.com>
In-Reply-To: <20241215032507.4739-1-shimrrashai@gmail.com>
References: <20241215032507.4739-1-shimrrashai@gmail.com>
Message-Id: <173436598341.265396.5585546641509709958.robh@kernel.org>
Subject: Re: [PATCH v3 0/3] arm64: dts: rockchip: Add Firefly ITX-3588J
 Board
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_082923_896532_2EA417CC 
X-CRM114-Status: GOOD (  16.12  )
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

Ck9uIFNhdCwgMTQgRGVjIDIwMjQgMjE6MjQ6NTIgLTA2MDAsIFNoaW1ycmEgU2hhaSB3cm90ZToK
PiBUaGlzIGlzIHRoZSAzcmQgZHJhZnQgb2YgdGhlIGRldmljZSB0cmVlIHByb3Bvc2FsIGZvciB0
aGUgRmlyZWZseSBJVFgtMzU4OEoKPiBib2FyZC4gVGhlIHNhbWUgZnVuY3Rpb25hbGl0eSBpc3N1
ZXMgYXMgYmVmb3JlIGFyZSBzdGlsbCBvdXRzdGFuZGluZzsKPiBob3dldmVyIEkgaGF2ZSBjbGVh
bmVkIHVwIHRoZSBzdHlsZSBhbmQgc3RydWN0dXJlIGFzIHBlciB0aGUgY29tbWVudHMgYnkKPiBI
ZWlrbyBTdMO8Ym5lciBvbiB2ZXJzaW9uIDIuIE9mIHBhcnRpY3VsYXIgbm90ZSBpcyB0aGUgc3Bs
aXR0aW5nIG9mIHRoZQo+IGRldmljZSB0cmVlIHNvdXJjZSBpbnRvIHR3byBmaWxlcyBiZWNhdXNl
IHRoaXMgcGxhdGZvcm0gYWN0dWFsbHkgY29uc2lzdHMKPiBvZiB0d28gYm9hcmRzOiB0aGUgSVRY
LTM1ODhKIGJhc2Vib2FyZCBhbmQgYSBzaW5nbGUgQ29yZS0zNTg4SiBjb21wdXRlCj4gbW9kdWxl
IHN0dWNrIGluIGEgc2xvdCBvbiBpdC4KPiAKPiAgLSBTaGltcnJhIFNoYWkuCj4gCj4gU2hpbXJy
YSBTaGFpICgzKToKPiAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgRFRzIGZvciBGaXJlZmx5
IElUWC0zNTg4SiBhbmQgaXRzIENvcmUtMzU4OEoKPiAgICAgU29NCj4gICBkdC1iaW5kaW5nczog
cGluY3RybDogYWRkIGhlYWRlciBmb3IgUENBOTU1NSBHUElPIGV4dGVuZGVyIGJpbmRpbmdzIG9u
Cj4gICAgIHNvbWUgUm9ja2NoaXAtYmFzZWQgZGV2aWNlcwo+ICAgZHQtYmluZGluZ3M6IGFybTog
cm9ja2NoaXA6IEFkZCBGaXJlZmx5IElUWC0zNTg4SiBib2FyZAo+IAo+ICAuLi4vZGV2aWNldHJl
ZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCAgICAgfCAgIDcgKwo+ICBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgfCAgIDEgKwo+ICAuLi4vcm9ja2NoaXAv
cmszNTg4LWZpcmVmbHktY29yZS0zNTg4ai5kdHNpICAgfCA0NTMgKysrKysrKysrKysKPiAgLi4u
L2R0cy9yb2NrY2hpcC9yazM1ODgtZmlyZWZseS1pdHgtMzU4OGouZHRzIHwgNzEyICsrKysrKysr
KysrKysrKysrKwo+ICAuLi4vZHQtYmluZGluZ3MvcGluY3RybC9yb2NrY2hpcC1wY2E5NTU1Lmgg
ICAgfCAgMzEgKwo+ICA1IGZpbGVzIGNoYW5nZWQsIDEyMDQgaW5zZXJ0aW9ucygrKQo+ICBjcmVh
dGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZmlyZWZs
eS1jb3JlLTM1ODhqLmR0c2kKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4LWZpcmVmbHktaXR4LTM1ODhqLmR0cwo+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgaW5jbHVkZS9kdC1iaW5kaW5ncy9waW5jdHJsL3JvY2tjaGlwLXBjYTk1NTUuaAo+IAo+
IC0tCj4gMi40NS4yCj4gCj4gCgoKTXkgYm90IGZvdW5kIG5ldyBEVEIgd2FybmluZ3Mgb24gdGhl
IC5kdHMgZmlsZXMgYWRkZWQgb3IgY2hhbmdlZCBpbiB0aGlzCnNlcmllcy4KClNvbWUgd2Fybmlu
Z3MgbWF5IGJlIGZyb20gYW4gZXhpc3RpbmcgU29DIC5kdHNpLiBPciBwZXJoYXBzIHRoZSB3YXJu
aW5ncwphcmUgZml4ZWQgYnkgYW5vdGhlciBzZXJpZXMuIFVsdGltYXRlbHksIGl0IGlzIHVwIHRv
IHRoZSBwbGF0Zm9ybQptYWludGFpbmVyIHdoZXRoZXIgdGhlc2Ugd2FybmluZ3MgYXJlIGFjY2Vw
dGFibGUgb3Igbm90LiBObyBuZWVkIHRvIHJlcGx5CnVubGVzcyB0aGUgcGxhdGZvcm0gbWFpbnRh
aW5lciBoYXMgY29tbWVudHMuCgpJZiB5b3UgYWxyZWFkeSByYW4gRFQgY2hlY2tzIGFuZCBkaWRu
J3Qgc2VlIHRoZXNlIGVycm9yKHMpLCB0aGVuCm1ha2Ugc3VyZSBkdC1zY2hlbWEgaXMgdXAgdG8g
ZGF0ZToKCiAgcGlwMyBpbnN0YWxsIGR0c2NoZW1hIC0tdXBncmFkZQoKCk5ldyB3YXJuaW5ncyBy
dW5uaW5nICdtYWtlIENIRUNLX0RUQlM9eSByb2NrY2hpcC9yazM1ODgtZmlyZWZseS1pdHgtMzU4
OGouZHRiJyBmb3IgMjAyNDEyMTUwMzI1MDcuNDczOS0xLXNoaW1ycmFzaGFpQGdtYWlsLmNvbToK
CmFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaTozNTUuMzktMzU4
LjQ6IFdhcm5pbmcgKGNsb2Nrc19wcm9wZXJ0eSk6IC9kaXNwbGF5LXN1YnN5c3RlbTogTWlzc2lu
ZyBwcm9wZXJ0eSAnI2Nsb2NrLWNlbGxzJyBpbiBub2RlIC9waHlAZmVkNjAwMDAgb3IgYmFkIHBo
YW5kbGUgKHJlZmVycmVkIGZyb20gY2xvY2tzWzBdKQogIGFsc28gZGVmaW5lZCBhdCBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1maXJlZmx5LWl0eC0zNTg4ai5kdHM6MjkyLjIw
LTI5NS4zCmFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWZpcmVmbHktaXR4LTM1
ODhqLmR0YjogZGlzcGxheS1zdWJzeXN0ZW06ICdjbG9jay1uYW1lcycsICdjbG9ja3MnIGRvIG5v
dCBtYXRjaCBhbnkgb2YgdGhlIHJlZ2V4ZXM6ICdwaW5jdHJsLVswLTldKycKCWZyb20gc2NoZW1h
ICRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvZGlzcGxheS9yb2NrY2hpcC9yb2Nr
Y2hpcC1kcm0ueWFtbCMKYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZmlyZWZs
eS1pdHgtMzU4OGouZHRiOiBwbWljQDA6IFVuZXZhbHVhdGVkIHByb3BlcnRpZXMgYXJlIG5vdCBh
bGxvd2VkICgncms4MDZfZHZzMV9wd3Jkbicgd2FzIHVuZXhwZWN0ZWQpCglmcm9tIHNjaGVtYSAk
aWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL21mZC9yb2NrY2hpcCxyazgwNi55YW1s
IwphcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1maXJlZmx5LWl0eC0zNTg4ai5k
dGI6IHBjaWVAZmUxNzAwMDA6IFVuZXZhbHVhdGVkIHByb3BlcnRpZXMgYXJlIG5vdCBhbGxvd2Vk
ICgncm9ja2NoaXAsc2tpcC1zY2FuLWluLXJlc3VtZScgd2FzIHVuZXhwZWN0ZWQpCglmcm9tIHNj
aGVtYSAkaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3BjaS9yb2NrY2hpcC1kdy1w
Y2llLnlhbWwjCgoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
