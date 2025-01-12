Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25AFEE77188
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jan 2025 17:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mGE+w8HU8hR0DY5HFIq2oCeiD6gwrdMINJqQDEQcWHM=; b=sJCXaY8YkXoHMw
	1fb4aY4kBppWwsRuxfknHzDow51WRrFjQuzVg9f1Y4Q1k2m1Zt2AiZfwEeXVhPAqTRrVuPkt+rHs+
	13+dNuq36uf9yKZr/HeCKmTrPi6HpAj7UjorpmYRIZiQyY9L3lKD2r/GsTK8GixTNysnlYbZP6EEo
	p/vKBZ5wXJ9mk/zzJELZOYb+ph0COs9ZpTs10J3h0SO4fKo8vBvBR0mBd4ple97B80+INWwA2kGpv
	Er3WwqjDGt/4pWfC4t9cDrkNl7z4DNat/AlSFuEYWp7W9xUdQszBX4UZHWUpdL0nahv9ajvDH1iDV
	VnaDTXfWuMs9XFkz+hZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tX1NZ-000000037Cf-0O55;
	Sun, 12 Jan 2025 17:04:01 +0000
Received: from smtp-26.smtpout.orange.fr ([80.12.242.26] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tX1NQ-000000037BH-1p5z;
	Sun, 12 Jan 2025 17:03:54 +0000
Received: from [192.168.1.37] ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id X1NCt2XX5qZ5JX1NGt8sSO; Sun, 12 Jan 2025 18:03:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1736701429;
	bh=gcp02vfLN1uVTWXJ8UJ8BzKX5eeyuNnorXOtRkd8w94=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=fnH0iNQQzQe3piqBMIVE5d9BG6+w8xEgN2VBqmi8AXirOeRy60NrMR/v+/jXABh16
	 JpvenW7mQrRyQJNS7ODfCQud/A0sHpCYumL7Rxo4dvkQRkFn5Sq+X8YWWLh1l3Npj7
	 EKCh7IqNNNluOSSWpJWw/jeZKljq/zAdtpT71biBfD3cTuF1rjWn5vFZEgL0E6FQCj
	 rUQtMFXuQPg5CYG5zF84tPPtJtZ/Li8U3366GMCLOd/+RYloATVfvXiYux/yyQLhAh
	 h/GhbIjMLlosT95vg3PB740gtcl7sPYn5Kc0tMKx+JEYGR+BJ4RpBBEKNHbPCy3uh+
	 8FUFx8/CX7JlA==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: bWFyaW9uLmphaWxsZXRAd2FuYWRvby5mcg==
X-ME-Date: Sun, 12 Jan 2025 18:03:49 +0100
X-ME-IP: 90.11.132.44
Message-ID: <05dfdd2f-e2c2-40ff-8a84-038c4da8385a@wanadoo.fr>
Date: Sun, 12 Jan 2025 18:03:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next] net: phy: Constify struct mdio_device_id
To: Andrew Lunn <andrew@lunn.ch>
Cc: SkyLake.Huang@mediatek.com, UNGLinuxDriver@microchip.com,
 andrei.botila@oss.nxp.com, andrew@lunn.ch,
 angelogioacchino.delregno@collabora.com, arun.ramadoss@microchip.com,
 bcm-kernel-feedback-list@broadcom.com, daniel@makrotopia.org,
 davem@davemloft.net, dqfext@gmail.com, edumazet@google.com,
 florian.fainelli@broadcom.com, heiko@sntech.de, hkallweit1@gmail.com,
 jbrunet@baylibre.com, kabel@kernel.org, kernel-janitors@vger.kernel.org,
 khilman@baylibre.com, kuba@kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux@armlinux.org.uk,
 lxu@maxlinear.com, martin.blumenstingl@googlemail.com,
 matthias.bgg@gmail.com, michael.hennerich@analog.com,
 neil.armstrong@linaro.org, netdev@vger.kernel.org, pabeni@redhat.com,
 piergiorgio.beruto@gmail.com, richardcochran@gmail.com, rjui@broadcom.com,
 sbranden@broadcom.com
References: <403c381b7d9156b67ad68ffc44b8eee70c5e86a9.1736691226.git.christophe.jaillet@wanadoo.fr>
 <9dfeb860-3c0c-4f16-a150-fdce133281e8@lunn.ch>
Content-Language: en-US, fr-FR
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <9dfeb860-3c0c-4f16-a150-fdce133281e8@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_090352_879874_2BE381FA 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
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

TGUgMTIvMDEvMjAyNSDDoCAxNzo0NiwgQW5kcmV3IEx1bm4gYSDDqWNyaXTCoDoKPiBPbiBTdW4s
IEphbiAxMiwgMjAyNSBhdCAwMzoxNDo1MFBNICswMTAwLCBDaHJpc3RvcGhlIEpBSUxMRVQgd3Jv
dGU6Cj4+ICdzdHJ1Y3QgbWRpb19kZXZpY2VfaWQnIGlzIG5vdCBtb2RpZmllZCBpbiB0aGVzZSBk
cml2ZXJzLgo+Pgo+PiBDb25zdGlmeWluZyB0aGVzZSBzdHJ1Y3R1cmVzIG1vdmVzIHNvbWUgZGF0
YSB0byBhIHJlYWQtb25seSBzZWN0aW9uLCBzbwo+PiBpbmNyZWFzZSBvdmVyYWxsIHNlY3VyaXR5
Lgo+Pgo+PiBPbiBhIHg4Nl82NCwgd2l0aCBhbGxtb2Rjb25maWcsIGFzIGFuIGV4YW1wbGU6Cj4+
IEJlZm9yZToKPj4gPT09PT09Cj4+ICAgICB0ZXh0CSAgIGRhdGEJICAgIGJzcwkgICAgZGVjCSAg
ICBoZXgJZmlsZW5hbWUKPj4gICAgMjcwMTQJICAxMjc5MgkgICAgICAwCSAgMzk4MDYJICAgOWI3
ZQlkcml2ZXJzL25ldC9waHkvYnJvYWRjb20ubwo+Pgo+PiBBZnRlcjoKPj4gPT09PT0KPj4gICAg
IHRleHQJICAgZGF0YQkgICAgYnNzCSAgICBkZWMJICAgIGhleAlmaWxlbmFtZQo+PiAgICAyNzIw
NgkgIDEyNjAwCSAgICAgIDAJICAzOTgwNgkgICA5YjdlCWRyaXZlcnMvbmV0L3BoeS9icm9hZGNv
bS5vCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdG9waGUgSkFJTExFVCA8Y2hyaXN0b3BoZS5q
YWlsbGV0QHdhbmFkb28uZnI+Cj4gCj4gU2VlbXMgc2Vuc2libGUuCj4gCj4gUmV2aWV3ZWQtYnk6
IEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4KPiAKPiBJcyB0aGUgbG9uZyB0ZXJtcyBnb2Fs
IHRvIG1ha2UgTU9EVUxFX0RFVklDRV9UQUJMRSgpIGVuZm9yY2UgdGhlCj4gY29uc3Q/CgpJdCB3
YXMgbm90IG15IGluaXRpYWwgZ29hbCwgYnV0IEkgY2FuIGdpdmUgaXQgYSBsb29rIGlmIHlvdSB0
aGluayBpdCdzIAp3b3J0aCBpdC4KCkJ1dCBzb21lIG90aGVyIGNvbnN0aWZpY2F0aW9ucyB3aWxs
IGJlIG5lZWRlZCBiZWZvcmUgdGhhdC4KCkNKCgo+IAo+ICAgICAgQW5kcmV3Cj4gCj4gCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
