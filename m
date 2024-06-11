Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E280C27C65
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jun 2024 18:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ePBDh72p1yn05jfOGIdjbG3MKfOl9xIb2dARiyXp5Dc=; b=tF3ek3dGxvwveb
	0cX01oPigHdVr35b1/mTfLBZb0GPaLadclfoer/XMfHbkgeWtWdOqZelh7L1yqARWR1sPvOz9ZL5B
	oTA3QUaYovFHOPNWemz/t0uG3KB2dawF0pdfuRNIfT16tmBlCMgFRygvPvLOJLt6aXES0DiDMhQw5
	cFce4EhPPqPx+pbUYr3zHfJOHm1S6donKXxrf0Ko+Rx253Uk6CbgXiUEN+Ch7GV2tDapsSL4quDCX
	FSeCCApUYjWPYx1mJ5XOzuPsLk53nwWeCn0vEkc5HmtPhYjw1oJTpbxiMrWlONNnp6X/Nybx+gdo5
	AEQbKYvIn/CSlkfoUClQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH5oy-00000009ljQ-0Hz1;
	Tue, 11 Jun 2024 18:02:12 +0000
Received: from smtp-17.smtpout.orange.fr ([80.12.242.17] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH5oq-00000009liT-3f5g;
	Tue, 11 Jun 2024 18:02:10 +0000
Received: from [192.168.1.37] ([86.243.222.230])
	by smtp.orange.fr with ESMTPA
	id H5olsL40AaOgCH5olse2pO; Tue, 11 Jun 2024 20:02:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1718128922;
	bh=LfOZxncwwf6XREq5b9IL5FbGRIjBFwt+UfYI2IfGiqQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=DTqnmkq3oHxGUc3HJf1P3fO9wTa2aXnPdpyzGtzCVR9euIO0UUlxZiUGHlVPrkHHs
	 LH+hO+FaXddLE5a+/V/o/UuBlmC1a06k54T83/GOyqjzcTQDuC5zAiQlncL6uI/PDq
	 1YqRAFY9S9fTFL+LL3RmQSGZRMlBfsg9Axu3DhlyjLNxtlzhchB4zD0RHEcS319iLE
	 PgIgfm+T0mrDH//O4rcTjenuUXRtkAo8LvliZlpSFFgdLc/ljIfU1vBWkffCrIpXvO
	 icOl4YqmCTiY+/Xpjy3wnKXh68fSeiwEw+JquSPdOyieb9uNR5zO2AfSER3Zx7315j
	 XC+F/pXTEycpA==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Tue, 11 Jun 2024 20:02:02 +0200
X-ME-IP: 86.243.222.230
Message-ID: <81006407-cfbd-47b7-8050-3a455f9654dd@wanadoo.fr>
Date: Tue, 11 Jun 2024 20:01:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/7] i2c: mux: add the ability to share mux address
 with child nodes
To: Farouk Bouabid <farouk.bouabid@cherry.de>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Peter Rosin <peda@axentia.se>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Quentin Schulz
 <quentin.schulz@cherry.de>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20240611-dev-mule-i2c-mux-v3-0-08d26a28e001@cherry.de>
 <20240611-dev-mule-i2c-mux-v3-1-08d26a28e001@cherry.de>
Content-Language: en-MW
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <20240611-dev-mule-i2c-mux-v3-1-08d26a28e001@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_110209_736366_9B9BD02F 
X-CRM114-Status: GOOD (  21.30  )
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

TGUgMTEvMDYvMjAyNCDDoCAxMzo0MywgRmFyb3VrIEJvdWFiaWQgYSDDqWNyaXTCoDoKPiBBbGxv
dyB0aGUgbXV4IChpZiBpdCdzIGFuIEkyQyBkZXZpY2UpIHRvIGhhdmUgdGhlIHNhbWUgYWRkcmVz
cyBhcyBhIGNoaWxkCj4gZGV2aWNlLiBUaGlzIGlzIHVzZWZ1bCB3aGVuIHRoZSBtdXggY2FuIG9u
bHkgdXNlIGFuIEkyQyBhZGRyZXNzIHRoYXQgaXMKPiB1c2VkIGJ5IGEgY2hpbGQgZGV2aWNlIGJl
Y2F1c2Ugbm8gb3RoZXIgYWRkcmVzc2VzIGFyZSBmcmVlIHRvIHVzZS4KPiBlZy4gdGhlIG11eCBj
YW4gb25seSB1c2UgYWRkcmVzcyAweDE4IHdoaWNoIGlzIHVzZWQgYnkgYW1jNjgyMSBjb25uZWN0
ZWQKPiB0byB0aGUgbXV4Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEZhcm91ayBCb3VhYmlkIDxmYXJv
dWsuYm91YWJpZEBjaGVycnkuZGU+Cj4gLS0tCgpIaSwKCjIgbml0cGlja3MgYmVsb3cuCgo+IC0t
LSBhL2RyaXZlcnMvaTJjL2kyYy1tdXguYwo+ICsrKyBiL2RyaXZlcnMvaTJjL2kyYy1tdXguYwo+
IEBAIC0zMzQsNyArMzM0LDUzIEBAIGludCBpMmNfbXV4X2FkZF9hZGFwdGVyKHN0cnVjdCBpMmNf
bXV4X2NvcmUgKm11eGMsCj4gICAJcHJpdi0+YWRhcC5kZXYucGFyZW50ID0gJnBhcmVudC0+ZGV2
Owo+ICAgCXByaXYtPmFkYXAucmV0cmllcyA9IHBhcmVudC0+cmV0cmllczsKPiAgIAlwcml2LT5h
ZGFwLnRpbWVvdXQgPSBwYXJlbnQtPnRpbWVvdXQ7Cj4gLQlwcml2LT5hZGFwLnF1aXJrcyA9IHBh
cmVudC0+cXVpcmtzOwo+ICsKPiArCXN0cnVjdCBpMmNfYWRhcHRlcl9xdWlya3MgKnF1aXJrczsK
ClNob3VsZCB0aGlzIGJlIGF0IHRoZSBiZWdpbm5pbmcgb2YgdGhlIGZ1bmN0aW9uPwoKPiArCS8q
Cj4gKwkgKiBXaGVuIGNyZWF0aW5nIHRoZSBhZGFwdGVyLCB0aGUgbm9kZSBkZXZpY2VzIGFyZSBj
aGVja2VkIGZvciBJMkMgYWRkcmVzcwo+ICsJICogbWF0Y2ggd2l0aCBvdGhlciBkZXZpY2VzIG9u
IHRoZSBwYXJlbnQgYWRhcHRlciwgYW1vbmcgd2hpY2ggaXMgdGhlIG11eCBpdHNlbGYuCj4gKwkg
KiBJZiBhIG1hdGNoIGlzIGZvdW5kIHRoZSBub2RlIGRldmljZSBpcyBub3QgcHJvYmVkIHN1Y2Nl
c3NmdWxseS4KPiArCSAqIEFsbG93IHRoZSBtdXggdG8gaGF2ZSB0aGUgc2FtZSBhZGRyZXNzIGFz
IGEgY2hpbGQgZGV2aWNlIGJ5IHNraXBwaW5nIHRoaXMgY2hlY2suCj4gKwkgKi8KPiArCWlmICht
dXhjLT5zaGFyZV9hZGRyX3dpdGhfY2hpbGRyZW4pIHsKPiArCQlzdHJ1Y3QgaTJjX2NsaWVudCAq
Y2xpZW50ID0gdG9faTJjX2NsaWVudChtdXhjLT5kZXYpOwo+ICsKPiArCQlpZiAobXV4Yy0+ZGV2
LT50eXBlICE9ICZpMmNfY2xpZW50X3R5cGUpCj4gKwkJCWRldl93YXJuX29uY2UobXV4Yy0+ZGV2
LCAiTXV4IGlzIG5vdCBhbiBJMkMgZGV2aWNlXG4iKTsKPiArCj4gKwkJcXVpcmtzID0gZGV2bV9r
emFsbG9jKG11eGMtPmRldiwgc2l6ZW9mKCpxdWlya3MpLCBHRlBfS0VSTkVMKTsKPiArCQlpZiAo
IXF1aXJrcykKPiArCQkJcmV0dXJuIC1FTk9NRU07Cj4gKwo+ICsJCWlmIChwYXJlbnQtPnF1aXJr
cykKPiArCQkJbWVtY3B5KHF1aXJrcywgcGFyZW50LT5xdWlya3MsIHNpemVvZigqcXVpcmtzKSk7
Cj4gKwo+ICsJCXF1aXJrcy0+ZmxhZ3MgfD0gSTJDX0FRX1NLSVBfQUREUl9DSEVDSzsKPiArCQlx
dWlya3MtPnNraXBfYWRkcl9pbl9wYXJlbnQgPSBjbGllbnQtPmFkZHI7Cj4gKwkJcHJpdi0+YWRh
cC5xdWlya3MgPSBxdWlya3M7Cj4gKwo+ICsJfSBlbHNlIGlmIChwYXJlbnQtPnF1aXJrcyAmJgo+
ICsJCSAgIHBhcmVudC0+cXVpcmtzLT5mbGFncyAmIEkyQ19BUV9TS0lQX0FERFJfQ0hFQ0spIHsK
PiArCQkvKgo+ICsJCSAqIEFub3RoZXIgSTJDIG11eCBkZXZpY2UgY2FuIGJlIGEgY2hpbGQgb2Yg
dGhlIE11bGUgSTJDIG11eC4KPiArCQkgKiBUaGUgZm9ybWVyIGNvdWxkIHByb2JhYmx5IG5vdCBh
bGxvdyBhZGRyZXNzIGNvbmZsaWN0IGJldHdlZW4KPiArCQkgKiBpdHMgYWRkcmVzcyBhbmQgaXRz
IG93biBjaGlsZHJlbiBhZGRyZXNzZXMuCj4gKwkJICoKPiArCQkgKiBGb3IgdGhpcyBwdXJwb3Nl
LCBkbyBub3QgcHJvcGFnYXRlIHRoaXMgZmxhZyB1bmxlc3MKPiArCQkgKiBzaGFyZV9hZGRyX3dp
dGhfY2hpbGRyZW4gaXMgc2V0Lgo+ICsJCSAqLwo+ICsJCXF1aXJrcyA9IGRldm1fa3phbGxvYyht
dXhjLT5kZXYsIHNpemVvZigqcXVpcmtzKSwgR0ZQX0tFUk5FTCk7CgpkZXZtX2ttZW1kdXAoKT8g
KG5vdCBzdXJlIGl0IGlzIGEgd2luKQoKPiArCQlpZiAoIXF1aXJrcykKPiArCQkJcmV0dXJuIC1F
Tk9NRU07Cj4gKwo+ICsJCW1lbWNweShxdWlya3MsIHBhcmVudC0+cXVpcmtzLCBzaXplb2YoKnF1
aXJrcykpOwo+ICsJCXF1aXJrcy0+ZmxhZ3MgJj0gfkkyQ19BUV9TS0lQX0FERFJfQ0hFQ0s7Cj4g
KwkJcHJpdi0+YWRhcC5xdWlya3MgPSBxdWlya3M7Cj4gKwo+ICsJfSBlbHNlIHsKPiArCQlwcml2
LT5hZGFwLnF1aXJrcyA9IHBhcmVudC0+cXVpcmtzOwo+ICsJfQo+ICsKPiAgIAlpZiAobXV4Yy0+
bXV4X2xvY2tlZCkKPiAgIAkJcHJpdi0+YWRhcC5sb2NrX29wcyA9ICZpMmNfbXV4X2xvY2tfb3Bz
Owo+ICAgCWVsc2UKCi4uLgoKQ0oKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
