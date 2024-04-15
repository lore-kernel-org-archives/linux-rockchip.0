Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBFECC4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 18:47:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=K6Z5giu4pSQ0dfmU+jrWWt/uXjWRLm/4U6voReQjOhM=; b=bvwYGMaQAAT+Ot97yyCmltpsUB
	LSc1mkTGkvDObx6PGHOo7jI3t3hxO2M+Sv/uHRqXCAbH/GHnpSrTmZCRm3yYpmfPxQhJrpwUXFB0S
	/3KPD9rWCwhvxi2xSKd3/pRtSoiAuBtzQd7vy0LbEYiPX5+jP9QVlBxn46fsv2fmw0taShLWZa5lM
	cPaAfzOoUlyVJlfivjSWyOFE0CCs9la54eq9UVOT2kG90E1VfLnkXlQTzTHbIxPjVFGbZqh1gHr88
	CkD/uVPfJ9b+97XbvL+d7StOVXbm8rL8JaZ00+ZxeZimQCVuVqNTMOJ7kTZ3zr2fu+T2pFy753nZi
	oc6e3Qew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwRM2-00000009UNq-2pOf;
	Mon, 15 Apr 2024 18:46:58 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwRLz-00000009UND-1Ikg;
	Mon, 15 Apr 2024 18:46:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2D4F4CE0EC5;
	Mon, 15 Apr 2024 18:46:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81728C113CC;
	Mon, 15 Apr 2024 18:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713206812;
	bh=1YakDkc62HbppF5hPJRp9P9V4kvV6LCi/TJjFT8VYl8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=PREhNZwFjvg56f/iJMjGfnzW/D8fqourfHVqRT+d8lbcGSCv5cWm4X2rLKA5UQ/VE
	 EgDOEtJllOYI+F2AT2WWVnFNkjnLmck+buQQmLoL0mMQKX3q2tF+7ziVYc0py3EkvB
	 goFY0Gq62Av2ZVnMAjxtmnbyjKElM9xZfOtIhQj9MGfCEn78wRvNz3G5c3blZgAWJy
	 +RrHhJUUUcOQ8a9MY75wSQKjEkSoh02R6aZkH8ouP3kuU+FuQxS2DLq1IGdw2ZShlR
	 OKl9cdmaP/7aRe7GGNRTDEtiIrQRi+RT8GlNgYj+CkedStfL5/Hd0eur378vfDzBcb
	 IxakXwOZInICw==
Date: Mon, 15 Apr 2024 13:46:49 -0500
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, heiko@sntech.de, sfr@canb.auug.org.au, 
 linux-arm-kernel@lists.infradead.org, weizhao.ouyang@arm.com
In-Reply-To: <20240413032328.784142-1-liujianfeng1994@gmail.com>
References: <20240413032328.784142-1-liujianfeng1994@gmail.com>
Message-Id: <171320634163.4714.8795054686718423617.robh@kernel.org>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Add ArmSom Sige7 board
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_114655_757035_F1236FAA 
X-CRM114-Status: GOOD (  11.82  )
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

Ck9uIFNhdCwgMTMgQXByIDIwMjQgMTE6MjM6MjcgKzA4MDAsIEppYW5mZW5nIExpdSB3cm90ZToK
PiBTcGVjaWZpY2F0aW9uOgo+ICAgICAgICAgUm9ja2NoaXAgUmszNTg4IFNvQwo+ICAgICAgICAg
NHggQVJNIENvcnRleC1BNzYsIDR4IEFSTSBDb3J0ZXgtQTU1Cj4gICAgICAgICA4LzE2LzMyR0Ig
TWVtb3J5IExQRERSNC9MUEREUjR4Cj4gICAgICAgICBNYWxpIEc2MTBNUDQgR1BVCj4gICAgICAg
ICAyw5cgTUlQSS1DU0kgQ29ubmVjdG9yCj4gICAgICAgICAxw5cgTUlQSS1EU0kgQ29ubmVjdG9y
Cj4gICAgICAgICAxeCBNLjIgS2V5IE0gKFBDSWUgMy4wIDQtbGFuZXMpCj4gICAgICAgICAyeCBS
VEw4MTI1IDIuNUcgRXRoZXJuZXQKPiAgICAgICAgIE9uYm9hcmQgQVA2Mjc1UCBmb3IgV0lGSTYv
QlQ1Cj4gICAgICAgICAzMkdCLzY0R0IvMTI4R0IgZU1NQwo+ICAgICAgICAgTWljcm9TRCBjYXJk
IHNsb3QKPiAgICAgICAgIDF4IFVTQjIuMCwgMXggVVNCMy4wIFR5cGUtQSwgMXggVVMzLjAgVHlw
ZS1DCj4gICAgICAgICAxeCBIRE1JIE91dHB1dCwgMXggdHlwZS1DIERQIE91dHB1dAo+IAo+IEZ1
bmN0aW9ucyB3b3JrIG5vcm1hbGx5Ogo+ICAgICAgICAgVVNCMi4wIEhvc3QKPiAgICAgICAgIFVT
QjMuMCBUeXBlLUEgSG9zdCAoZGVwZW5kIG9uIGp1c3QgYXBwbGllZCBVU0JEUCBkcml2ZXJbMV0p
Cj4gICAgICAgICBNLjIgS2V5IE0gKFBDSWUgMy4wIDQtbGFuZXMpCj4gICAgICAgICAyeCBSVEw4
MTI1IDIuNUcgRXRoZXJuZXQKPiAgICAgICAgIGVNTUMKPiAgICAgICAgIE1pY3JvU0QgY2FyZAo+
IAo+IE1vcmUgaW5mb3JtYXRpb24gY2FuIGJlIG9idGFpbmVkIGZyb20gdGhlIGZvbGxvd2luZyB3
ZWJzaXRlCj4gICAgICAgICBodHRwczovL2RvY3MuYXJtc29tLm9yZy9hcm1zb20tc2lnZTcKPiAK
PiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjQwNDA4MjI1MTA5LjEyODk1My0x
LXNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20vCj4gCj4gU2lnbmVkLW9mZi1ieTogSmlh
bmZlbmcgTGl1IDxsaXVqaWFuZmVuZzE5OTRAZ21haWwuY29tPgo+IC0tLQo+ICBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgfCAgIDEgKwo+ICAuLi4vYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4LWFybXNvbS1zaWdlNy5kdHMgfCA3MjUgKysrKysrKysrKysrKysr
KysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgNzI2IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUg
MTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWFybXNvbS1zaWdlNy5k
dHMKPiAKCgpNeSBib3QgZm91bmQgbmV3IERUQiB3YXJuaW5ncyBvbiB0aGUgLmR0cyBmaWxlcyBh
ZGRlZCBvciBjaGFuZ2VkIGluIHRoaXMKc2VyaWVzLgoKU29tZSB3YXJuaW5ncyBtYXkgYmUgZnJv
bSBhbiBleGlzdGluZyBTb0MgLmR0c2kuIE9yIHBlcmhhcHMgdGhlIHdhcm5pbmdzCmFyZSBmaXhl
ZCBieSBhbm90aGVyIHNlcmllcy4gVWx0aW1hdGVseSwgaXQgaXMgdXAgdG8gdGhlIHBsYXRmb3Jt
Cm1haW50YWluZXIgd2hldGhlciB0aGVzZSB3YXJuaW5ncyBhcmUgYWNjZXB0YWJsZSBvciBub3Qu
IE5vIG5lZWQgdG8gcmVwbHkKdW5sZXNzIHRoZSBwbGF0Zm9ybSBtYWludGFpbmVyIGhhcyBjb21t
ZW50cy4KCklmIHlvdSBhbHJlYWR5IHJhbiBEVCBjaGVja3MgYW5kIGRpZG4ndCBzZWUgdGhlc2Ug
ZXJyb3IocyksIHRoZW4KbWFrZSBzdXJlIGR0LXNjaGVtYSBpcyB1cCB0byBkYXRlOgoKICBwaXAz
IGluc3RhbGwgZHRzY2hlbWEgLS11cGdyYWRlCgoKTmV3IHdhcm5pbmdzIHJ1bm5pbmcgJ21ha2Ug
Q0hFQ0tfRFRCUz15IHJvY2tjaGlwL3JrMzU4OC1hcm1zb20tc2lnZTcuZHRiJyBmb3IgMjAyNDA0
MTMwMzIzMjguNzg0MTQyLTEtbGl1amlhbmZlbmcxOTk0QGdtYWlsLmNvbToKCmFyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWFybXNvbS1zaWdlNy5kdGI6IHBjaWVAZmUxNTAwMDA6
ICdwaW5jdHJsLTAnIGlzIGEgZGVwZW5kZW5jeSBvZiAncGluY3RybC1uYW1lcycKCWZyb20gc2No
ZW1hICRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcGluY3RybC9waW5jdHJsLWNv
bnN1bWVyLnlhbWwjCmFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWFybXNvbS1z
aWdlNy5kdGI6IGxlZHM6IGxlZF9yZ2JfcjpsaW51eCxkZWZhdWx0LXRyaWdnZXI6ICdvbmVPZicg
Y29uZGl0aW9uYWwgZmFpbGVkLCBvbmUgbXVzdCBiZSBmaXhlZDoKCSdkZWZhdWx0LW9mZicgaXMg
bm90IG9uZSBvZiBbJ2JhY2tsaWdodCcsICdkZWZhdWx0LW9uJywgJ2hlYXJ0YmVhdCcsICdkaXNr
LWFjdGl2aXR5JywgJ2Rpc2stcmVhZCcsICdkaXNrLXdyaXRlJywgJ3RpbWVyJywgJ3BhdHRlcm4n
LCAnYXVkaW8tbWljbXV0ZScsICdhdWRpby1tdXRlJywgJ2JsdWV0b290aC1wb3dlcicsICdmbGFz
aCcsICdrYmQtY2Fwc2xvY2snLCAnbXRkJywgJ25hbmQtZGlzaycsICdub25lJywgJ3RvcmNoJywg
J3VzYi1nYWRnZXQnLCAndXNiLWhvc3QnLCAndXNicG9ydCddCgknZGVmYXVsdC1vZmYnIGRvZXMg
bm90IG1hdGNoICdeY3B1WzAtOV0qJCcKCSdkZWZhdWx0LW9mZicgZG9lcyBub3QgbWF0Y2ggJ15o
Y2lbMC05XSstcG93ZXIkJwoJJ2RlZmF1bHQtb2ZmJyBkb2VzIG5vdCBtYXRjaCAnXm1tY1swLTld
KyQnCgknZGVmYXVsdC1vZmYnIGRvZXMgbm90IG1hdGNoICdecGh5WzAtOV0rdHgkJwoJZnJvbSBz
Y2hlbWEgJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9sZWRzL2xlZHMtZ3Bpby55
YW1sIwphcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1hcm1zb20tc2lnZTcuZHRi
OiBsZWRzOiBsZWRfcmdiX3I6IFVuZXZhbHVhdGVkIHByb3BlcnRpZXMgYXJlIG5vdCBhbGxvd2Vk
ICgnbGludXgsZGVmYXVsdC10cmlnZ2VyJyB3YXMgdW5leHBlY3RlZCkKCWZyb20gc2NoZW1hICRp
ZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvbGVkcy9sZWRzLWdwaW8ueWFtbCMKCgoK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
