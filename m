Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CEE606A337
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 14:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=U0wN/ZwY;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=NAA3skTk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=g8bV/0W63oBTau+7YvWouV3ipgmP15eYZWR8ZeGIh/k=; b=U0wN/ZwYOweqHYfriG9mZGXx2H
	Gz1xgUyJ+XE6/KsQs5zc2HFXB25AUo5VnddhXUTtpx2vQnSSoTL3f+jV9xvZRapFQre2qGEmtAMvh
	9Rg+oJ/Q0WDcbI21+blWnVD13kGmIg0V8K2WMdRI8GaVX+9yEsTeyvDIk2kKSEWLSG20imXMVFr75
	HrM1OjoVO67DUVsHrv2zshyoSzp1fxv1laZUxpqTn7uJBfM8bttIRyQsDkgU49krwHmypIkZNlObg
	HzPftd3bS9cdg2cfnMZs+/4HgnFyDZ3n2mGA943MUYolFBKR+J7Gnmgjn5hPpLGBZzwdfno0jRM/y
	2liobzUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRVZ7-0000000ADQX-3QJ6;
	Thu, 12 Nov 2026 14:14:13 +0000
Received: from sender6-op-o11.zoho.com ([165.173.180.11])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRVZ4-0000000ADPp-4AGb;
	Thu, 12 Nov 2026 14:14:12 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1794492841; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=LuyQY12bW/Z83IwfAOxYJxZ41E4wry34UxveT0D7p1+KeG7vuh/g3/Z4PL/QiweY1cAObHPOqdNN/ST9ovLVoulqLB6bQcsSTjpu6+AM2Ic610a4k2B4uTEqtRfchqN3tPwu9RVXJDXtLkU6M0IGvzogik9csYMt7ietj2/S8js=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1794492841; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=b/4UOiXvF4Fr1l92XLmjcr1eg7nNlBSU5NS1Fo/IyFE=; 
	b=Jh3Jwp/xcKr3QKgJDQDf4E73hZu+wtI6ebEk8TbtrWlJP3CZ3MCU6v+pPsoAksowh2AxTMeOVC88QvUJRBWyiUjmn39z10Wfj6SFAwyNTbQsd4y688beAE9MMxDrreNbjzLFt1UAHYle0tb/I2Nc2jHyyiRzD5tU14dDYcElZ2U=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: a=rsa-sha256; b=NAA3skTkaOCGS4WxaR16OMOYO4CU8JVVcpLMtoI7vIovt4Dfwq56POyv8ssffi5G2sLrZk5OMqH5Z9I5dqeVZXLfMkODQj1dVWmhQg9vXsc96zy1cvmu6WHRHj/Gvwhr50LP6e9o0juz27pfKKS/2LPFjTjLzkGAov5QTWIWmCM=; c=relaxed/relaxed; s=zohomail; d=collabora.com; v=1; bh=b/4UOiXvF4Fr1l92XLmjcr1eg7nNlBSU5NS1Fo/IyFE=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zohomail.com with SMTPS id 1794492839836438.0202804362593;
	Thu, 12 Nov 2026 06:13:59 -0800 (PST)
Message-ID: <f212840b-92fd-4d97-a6a7-2768a55483f7@collabora.com>
Date: Thu, 12 Nov 2026 15:13:54 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] media: verisilicon: Don't hold the VPU in reset
 after remove
To: Philipp Zabel <p.zabel@pengutronix.de>, aiyengar1990@gmail.com,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Hans Verkuil <hverkuil@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Sergei Khomenkov <shomenkow@gmail.com>,
 Tharit Tangkijwanichakul <tharitt97@gmail.com>, stable@vger.kernel.org
References: <20261112-hantro-robust-v2-0-18561fd48838@gmail.com>
 <20261112-hantro-robust-v2-2-18561fd48838@gmail.com>
 <c97eef1ba88daf83d231d2ecc78b47fcf524385c.camel@pengutronix.de>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <c97eef1ba88daf83d231d2ecc78b47fcf524385c.camel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_061411_163012_FC622B49 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

CkxlIDEyLzExLzIwMjYgw6AgMTE6MTksIFBoaWxpcHAgWmFiZWwgYSDDqWNyaXTCoDoKPiBPbiBE
bywgMjAyNi0xMS0xMiBhdCAwODozMCArMDAwMCwgQXJ1biBJeWVuZ2FyIHZpYSBCNCBSZWxheSB3
cm90ZToKPj4gRnJvbTogQXJ1biBJeWVuZ2FyIDxhaXllbmdhcjE5OTBAZ21haWwuY29tPgo+Pgo+
PiBPbiB0aGUgUkszNTg4LCB0aGUgcmVzZXRzIG9mIHRoZSBBVjEgZGVjb2RlciBpbmNsdWRlIHRo
ZSBBWEkgYW5kIEFQQgo+PiBidXMgaW50ZXJmYWNlIHJlc2V0cyAoU1JTVF9BX0FWMV9CSVUsIFNS
U1RfUF9BVjFfQklVKSwgd2hpY2ggYWxzbyBjb3Zlcgo+PiB0aGUgVmVyaXNpbGljb24gSU9NTVUg
b2YgdGhlIGRlY29kZXIuIFdoZW4gdGhlIGRyaXZlciBpcyB1bmJvdW5kLCB0aGUKPj4gZHJpdmVy
IGNvcmUgcnVudGltZSByZXN1bWVzIHRoZSBkZXZpY2UgYW5kLCB0aHJvdWdoIHRoZSBydW50aW1l
IFBNCj4+IGRldmljZSBsaW5rLCBpdHMgSU9NTVUuIGhhbnRyb19yZW1vdmUoKSB0aGVuIGFzc2Vy
dHMgdGhlIHJlc2V0cywgYW5kCj4+IHdoZW4gdGhlIElPTU1VIGF1dG9zdXNwZW5kcyAxMDAgbXMg
bGF0ZXIsIHZzaV9pb21tdV9zdXNwZW5kKCkgd3JpdGVzIHRvCj4+IGl0cyByZWdpc3RlcnMgd2hp
bGUgdGhleSBhcmUgaGVsZCBpbiByZXNldCwgd2hpY2ggcmFpc2VzIGFuIFNFcnJvciBhbmQKPj4g
cGFuaWNzIHRoZSBzeXN0ZW06Cj4gSWYgdnNpLWlvbW11IGFjY2Vzc2VzIHJlcXVpcmUgdGhlc2Ug
YnVzIGludGVyZmFjZSByZXNldHMgdG8gYmUKPiBkZWFzc2VydGVkIGF0IGNlcnRhaW4gcG9pbnRz
LCB3aHkgZG9lc24ndCBpdCByZXF1ZXN0IGl0cyBvd24gcmVzZXQKPiBjb250cm9scz8KPgo+IERl
cGVuZGluZyBvbiBpbXBsaWNpdCBhc3N1bXB0aW9ucyBsaWtlIGFub3RoZXIgZHJpdmVyIG5vdCBh
c3NlcnRpbmcgaXRzCj4gZXhjbHVzaXZlbHkgY29udHJvbGxlZCByZXNldHMgc2VlbXMgZnJhZ2ls
ZS4KClRoZXJlIGlzIGEgc2lkZSBub3RlIG9uIElPTU1VIGRvYyBzYXlpbmcgdGhhdCBvbmNlIHRo
ZSBJT01NVSBoYXMgYmVlbgplbmFibGVkIGl0IGNhbid0IGJlIGRpc2FibGVkIGZvciBzZWN1cml0
eSByZWFzb25zLgpUaGF0IG1lYW5zIHRoYXQgd3JpdGluZyAwIG9uIFZTSV9NTVVfQUhCX0NPTlRS
T0xfQkFTRSByZWdpc3RlciBpbiB2c2lfaW9tbXVfZGlzYWJsZSgpCmNvdWxkIHJhaXNlIGFuIFNF
cnJvciBzbyBJIHdvdWxkIHN1Z2dlc3QgdG8gcmVtb3ZlIHRoaXMgbGluZSBmcm9tIElPTU1VIGRy
aXZlci4KClJlZ2FyZHMsCkJlbmphbWluCgo+Cj4gcmVnYXJkcwo+IFBoaWxpcHAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
