Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D6D3E9270D
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Oct 2023 15:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1xX2OcJPofJgkSObMjKI9AQNWaJFhPfAYf4Tc2SOaZE=; b=EW9h8UL+2xUg3a
	wTKcFTF2Ni40SNXHAbrlXu4Z+Ga77PHf9L8FZNFSr7IZ1Rx9A5iLmGalHO/4U3jPVel8J4fH98hFT
	paohFcQT4b8wWQmyikyA5e6Jekq0M/eQLxHFD85xvIhgOljPJBLZ5JAXs6S6ydDCGOpg6Sk2ZP4/L
	SabIDfH5S/FRp+tcSH+MlbIwcA9vyFWfdFbtAYBn9ZCHLZnqq+cMqzGDWWOlRlpx3gSbOlEDRxRfc
	e0Q6fHwFLXS1nS/6B2h9dV17+PThxnBqvEOJ/31RvyS844huPMmMIP1r0MOpDn/GJ46Wbfcvm+g+q
	RhmCUMjfMXYTkSgF4N2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoQRj-003unI-1H;
	Thu, 05 Oct 2023 15:39:27 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoQRf-003umN-1w;
	Thu, 05 Oct 2023 15:39:25 +0000
Received: from [IPV6:2a01:e0a:120:3210:4c53:5fd0:f25b:b0dd] (unknown [IPv6:2a01:e0a:120:3210:4c53:5fd0:f25b:b0dd])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B46156607332;
	Thu,  5 Oct 2023 16:39:21 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696520362;
	bh=f7LqF9CFfJY9QHYGeDMcAcJhPQ5LfK29gaDUJGIvsf0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=gk/mNWQaeZW5VNWjb0QhyjivV4pkm/Bn0WgD9z2Ii07D8AnAUrGTiOX1wy/5lemO3
	 bgXyBJirN3X+jfJpPwGvFNdsZvukKNaqg/m96w5FUO9QMhwLaJfkRVjPEIMzepEn2i
	 lbm5Rf+6RI8wLBvlJMumDPRkkOpW1q2MYyGbsF4vyxOSO4itrxXSR7huKZk0C8tZyB
	 c1jjbAXLrsptEsv/BUQ0dngw5s9QCcnO0UauFIptC7VVL1/2oZFUWP3Ax7cdE/EJ0r
	 xQHOFqGuV2GIeflUDg0NqwQLq2DuiCXVzaJaBhb+AclpGmqPNXI6pUuP4iEfUHLcYa
	 YlOHkfRJPLyag==
Message-ID: <531ea6cc-83b5-4c88-90a3-576e2e38bf80@collabora.com>
Date: Thu, 5 Oct 2023 17:39:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588is: Add AV1 decoder node
To: Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20231005145420.169594-1-benjamin.gaignard@collabora.com>
 <20231005151210.nqdx2uoixqjhrtrx@mercury.elektranox.org>
 <2298521.ElGaqSPkdT@phil>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <2298521.ElGaqSPkdT@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231005_083923_781366_2A563B67 
X-CRM114-Status: GOOD (  13.68  )
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

CkxlIDA1LzEwLzIwMjMgw6AgMTc6MzAsIEhlaWtvIFN0dWVibmVyIGEgw6ljcml0wqA6Cj4gQW0g
RG9ubmVyc3RhZywgNS4gT2t0b2JlciAyMDIzLCAxNzoxMjoxMCBDRVNUIHNjaHJpZWIgU2ViYXN0
aWFuIFJlaWNoZWw6Cj4+IEhpLAo+Pgo+PiBPbiBUaHUsIE9jdCAwNSwgMjAyMyBhdCAwNDo1NDoy
MFBNICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPj4+IEFkZCBub2RlIGZvciBBVjEg
dmlkZW8gZGVjb2Rlci4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8
YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IFNlYmFz
dGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+PiBObyBuZWVk
IGZvciBteSBTb0IuIEluc3RlYWQgaGF2ZSB0aGlzIG9uZToKPj4KPj4gUmV2aWV3ZWQtYnk6IFNl
YmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+Pgo+PiBB
bHNvIHdvcnRoIG1lbnRpb25pbmcsIHRoYXQgdGhpcyBQYXRjaCBuZWVkcyBvbmUgc21hbGwgZml4
IGluIHRoZSBEVAo+PiBiaW5kaW5nIChhZGRpbmcgInJlc2V0cyIpIGFuZCBvbmUgc21hbGwgZml4
IGluIHRoZSBkcml2ZXIgZm9yIG91dCBvZgo+PiB0aGUgYm94IEFWMSBzdXBwb3J0Ogo+Pgo+PiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMzEwMDUxNDQ5MzQuMTY5MzU2LTEtYmVuamFt
aW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbS8KPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxs
LzIwMjMxMDA1MTQ1MTE2LjE2OTQxMS0xLWJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20v
Cj4gYWRkaXRpb25hbGx5IHRoZSBub2RlIG5hbWUgc2hvdWxkIGJlIGdlbmVyaWMuCj4gVGhlIHBo
YW5kbGUgY2FuIG9mIGNvdXJzZSBiZSBhdjFkIGJ1dCB0aGUgbm9kZQo+IG5hbWUgaXRzZWxmIG5l
ZWRzIGEgY2hhbmdlLgoKRG9lcyAidmlkZW8tY29kZWMtYXYxQGZkYzcwMDAwIiBzb3VuZCBnb29k
IGZvciB5b3UgPwoKPgo+IEhlaWtvCj4KPgo+Pj4gLS0tCj4+PiAgIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpIHwgMTQgKysrKysrKysrKysrKysKPj4+ICAgMSBmaWxl
IGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OHMuZHRzaQo+Pj4gaW5kZXggNTU0NGY2NmM2ZmY0Li44MzVlNjZkODVkNWYg
MTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRz
aQo+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kKPj4+
IEBAIC0yMzA0LDYgKzIzMDQsMjAgQEAgZ3BpbzQ6IGdwaW9AZmVjNTAwMDAgewo+Pj4gICAJCQkj
aW50ZXJydXB0LWNlbGxzID0gPDI+Owo+Pj4gICAJCX07Cj4+PiAgIAl9Owo+Pj4gKwo+Pj4gKwlh
djFkOiBhdjFkQGZkYzcwMDAwIHsKPj4+ICsJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTg4
LWF2MS12cHUiOwo+Pj4gKwkJcmVnID0gPDB4MCAweGZkYzcwMDAwIDB4MCAweDgwMD47Cj4+PiAr
CQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTA4IElSUV9UWVBFX0xFVkVMX0hJR0ggMD47Cj4+PiAr
CQlpbnRlcnJ1cHQtbmFtZXMgPSAidmRwdSI7Cj4+PiArCQljbG9ja3MgPSA8JmNydSBBQ0xLX0FW
MT4sIDwmY3J1IFBDTEtfQVYxPjsKPj4+ICsJCWNsb2NrLW5hbWVzID0gImFjbGsiLCAiaGNsayI7
Cj4+PiArCQlhc3NpZ25lZC1jbG9ja3MgPSA8JmNydSBBQ0xLX0FWMT4sIDwmY3J1IFBDTEtfQVYx
PjsKPj4+ICsJCWFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDQwMDAwMDAwMD4sIDw0MDAwMDAwMDA+
Owo+Pj4gKwkJcmVzZXRzID0gPCZjcnUgU1JTVF9BX0FWMT4sIDwmY3J1IFNSU1RfUF9BVjE+LCA8
JmNydSBTUlNUX0FfQVYxX0JJVT4sIDwmY3J1IFNSU1RfUF9BVjFfQklVPjsKPj4+ICsJCXBvd2Vy
LWRvbWFpbnMgPSA8JnBvd2VyIFJLMzU4OF9QRF9BVjE+Owo+Pj4gKwkJc3RhdHVzID0gIm9rYXki
Owo+Pj4gKwl9Owo+Pj4gICB9Owo+Pj4gICAKPj4+ICAgI2luY2x1ZGUgInJrMzU4OHMtcGluY3Ry
bC5kdHNpIgo+Cj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
