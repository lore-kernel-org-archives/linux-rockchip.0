Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66454CA5FFF
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Oct 2026 10:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZkJIf5WPrCSxtbRfUh0+vEkW8eyP4D2yM9Y+KnaUPo4=; b=0skWi+Ii5obbPI
	HrjiKoY24Df9LTaTHmDskggYAV1yCKmcd/ltoz8gyCscmXHtUlmtWwiJjlfU1FUkNHLIOmvFAhFLf
	zEapa2tmTdULfarK0vi9LimBPRJNdLPXc2T4ORknIMyCamrT5EpdcIgsrhmuVLjADYg9CwZ2rXM+Z
	h9h/bvTlep2J2/b5N3ppsD2un9h8ZLF0NRL6UMS27gXQu/keejiOntsKd3tECNsjgoHL6ABXhrnfj
	1znnZeQIrDUWKGu3WikY670QyPFy9sEydnjJsafxevayqpRm8Nz+kyY3ldjW6KijVwiWJrdWI4T2+
	8f2k2ZvJOTF0tFIeqSiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEOSD-000000027Cf-0Ptl;
	Wed, 07 Oct 2026 10:00:53 +0000
Received: from mail-ej2-x07.google.com ([2a00:1450:4864:34::7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEOS6-000000027BT-2LD6
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Oct 2026 10:00:47 +0000
Received: by mail-ej2-x07.google.com with SMTP id a640c23a62f3a-c2e22754212so206829766b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Oct 2026 03:00:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791367245; cv=none;
        d=google.com; s=arc-20260327;
        b=PlRCXrSKgvQEdQK4mJjwIfCmGmldS2uiLb4Uv9llLojn5738AQFKy8XwUlQpkhjZ/m
         5T0NbvmB4umxKBJw8jGpaFekdesMkgvrhzXGEVlTQjoU1HNWCzkOZLYr1HXe793BQjs+
         82SwW/THFeWv9vlSZQoTsjmK1uwT9W5ztHUJSyMRqxMC+5HP5NYkjGC05OJ04Y9cYyfY
         OmGsYtolyB4zHJ01teewOY6G6OAkxF9Sd+FuAekj19+JLNQIBIk4WbPnH9pGz4m8OVBj
         LxOZUC64f1umf2AIcOHVJEJSecsQdE5UL0V2urBIyCUCDmB2PXenReig6fdTVRXYgKpl
         JBDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=WrNkpb0d4qtNovZAgW6O0CMNn2hpdnuON/KzQGIiKiQ=;
        fh=zcrNzdKThphLJitCWliJqsCZ0TsrVfSmEFDJGRR7U8M=;
        b=CjGpebseW1KjQ32BKL01cSO1edk8jcJOQDy6ZgZIek9xq0YRBaHL8Ih9OEbSC7xxqk
         Pz3LkJVYU9Wd3Lj7DepPIwgJ6mffh7RQmAf9dUXDmFCcNSDY2oSbtOSCXegK0Vr8lWWH
         0k99mu8MHBkdumXwidhbw9bKAmfsoJ3V2XgCu9IOsSc0JWRI90wL/Mjq6fRCbrei3iF3
         nkTMSNBKAJQSFyf8gSSdT45QqhGR7iHIatdb5bDsML8mG/uGP0EoWlZUUWgpdnQZq3zZ
         L+Zp4Jm4jm9uwtVRDVHTf8lcJcfBfKhC/CULi+UXlASVNwHXd7g6nxXPB7a88uvBuKhV
         PDOA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791367245; x=1791972045; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=WrNkpb0d4qtNovZAgW6O0CMNn2hpdnuON/KzQGIiKiQ=;
        b=J/8vzwItrMR77jnnhfRrB8M6ZrKM6F1PM6uqYTyFOvZLuroPrv5kMF4y+98J5Mj+Vp
         g3FHK4GSrUWGcFEztkZh5l5c5d8k81PaLzGFv4a4rdJJy/F+GHqGukpf3FwKw0wI/0Ds
         RhueYDCgAQ810bng0DW24ALBZvBJuqHsE2l62wnXt5M+xLadv7+cgZ1LKkTscOBt7Vfy
         xaqshOkL9Sp4rFEVNrFwQ2AOvLmOTz6XyFv5GaP2gNIY5U/gkHxnmqj9k7zI979RSNvD
         eZG3OMc10kG5h6R7Ric4ahBUeNQAdxJd8iYdCGuQf6cX5BG3kyoVCYtRDz8i0IPGTyEU
         wB3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791367245; x=1791972045;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WrNkpb0d4qtNovZAgW6O0CMNn2hpdnuON/KzQGIiKiQ=;
        b=ROoFfBfFIboDjcOfCA4GQvXmu48oPsQH7NT/M/cl+ocHA15gUb15Aa4Qbc7kCw8D9Z
         9ttNHrQI+8b4yVrw8ysm1/giNzPNsvLINg0JdKIt+rqFGaW/+7RxWtCY1dvfmkzATuiE
         JkW5us1vsFeRppzDKfDJAB1bastl+rXUqnbQKukKd7AqBEEWty1cWkZdrS2pB8JtiH+U
         uEQ4H5etfTREyaFmlv+0sLcEX+S91GIoY8DJRAUT9lh5y1wcC6B+s2mYdYZiYD0trjK+
         YRQQBwxQhr8IxlLRTvBwMgCanZ9VymCQolJgiqlZRJqjrcdJ58stXK4N1JUtrkd68cIB
         awig==
X-Forwarded-Encrypted: i=1; AKwUvBz5LK/oZihHkRYdcBzzs5aieDphNpzoS+q1J7hKVMBefl9gk/qWUvuxlYZQq50yxBIYM0ZZ7jf+jeJvRp4DmA==@lists.infradead.org
X-Gm-Message-State: AFuF++mpdd44lJ0cHCdE+/W84toYWS22KcNbEoF5y+EwAfXoPABdMLgJ
	M2Z8KbwVkyPvAQp3kOEVj+dI+9OQ7Vk+t14ZlunDt01gahnCD6++sseZOD6j+kHjVWKr5eo/JC8
	EKc8U4IGS2N/ivBk/ajyMy8/yHGI+UPg=
X-Gm-Gg: AYBFou05fcEnYsF7yAonAfnYjEjE8iZX39i2woKR3wzIH4/wYErmPH2L58sVgFHGAoS
	uh1ZHNM1VAV93U+0jL4cZUqnQdY8oDkotLJXt8etsHERbJtqLIjy5xDP0713KDKrWW26Bpwn00q
	EKppjGrjj1qXKGf+A9Z72G9EkFxiWpbOp7OmfQwQMs51lPcSfYR1V035m1Sq1nKqNcsGtMbGuzF
	M75zGk5FX9Vcj7gRuRg4ffcET1TOeuuxxxiS5Vvj/tsCKWk4MFJRiMISqIoDdYZlCMeyHaGKLrw
	PYMC7opHPwj1Kfvwwas1ES4WlKw0ltY4sUaNdySkBv6V3rfBJjULMwcWmQ==
X-Received: by 2002:a17:907:968f:b0:c31:5c2b:9e4b with SMTP id
 a640c23a62f3a-c317bd913e3mr171417966b.9.1791367244345; Wed, 07 Oct 2026
 03:00:44 -0700 (PDT)
MIME-Version: 1.0
References: <20261005223011.1124347-1-coiaprant@gmail.com> <20261005223011.1124347-2-coiaprant@gmail.com>
 <20261006132428.GA1659963-robh@kernel.org> <96FA84EA-3C0E-4FAC-963F-2A8165538748@gmail.com>
 <20261006150831.GC2194299-robh@kernel.org> <46337722-9C86-4118-8286-A506B455B23D@gmail.com>
In-Reply-To: <46337722-9C86-4118-8286-A506B455B23D@gmail.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Wed, 7 Oct 2026 18:00:32 +0800
X-Gm-Features: AclHuK8fvALioIp_2ZDF3ZkGQsmcOc_f0Q9lbyHaYtZVARGtB6mcLM_NG_T3Tgk
Message-ID: <CALj3r0ihUKOtn4dE4=UJQG1qZbdE7EEZ76it-17N36gFHDSrzg@mail.gmail.com>
Subject: Re: [PATCH net-next v10 1/6] dt-bindings: net: pcs: add
 rockchip,rk3568-xpcs support
To: Rob Herring <robh@kernel.org>
Cc: Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, David Wu <david.wu@rock-chips.com>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_030046_650100_9E6F4953 
X-CRM114-Status: GOOD (  41.69  )
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

Q29pYSBQcmFudCA8Y29pYXByYW50QGdtYWlsLmNvbT4g5LqOMjAyNuW5tDEw5pyINuaXpeWRqOS6
jCAyMzo1MuWGmemBk++8mgo+Cj4gT24gT2N0b2JlciA2LCAyMDI2IDExOjA4OjMxIFBNIEdNVCsw
ODowMCwgUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPk9uIFR1ZSwgT2N0
IDA2LCAyMDI2IGF0IDA5OjU5OjQ5UE0gKzA4MDAsIENvaWEgUHJhbnQgd3JvdGU6Cj4gPj4gT24g
T2N0b2JlciA2LCAyMDI2IDk6MjQ6MjggUE0gR01UKzA4OjAwLCBSb2IgSGVycmluZyA8cm9iaEBr
ZXJuZWwub3JnPiB3cm90ZToKPiA+PiA+T24gVHVlLCBPY3QgMDYsIDIwMjYgYXQgMDY6MzA6MDNB
TSArMDgwMCwgQ29pYSBQcmFudCB3cm90ZToKPiA+PiA+PiBBZGQgZGV2aWNlIHRyZWUgYmluZGlu
ZyBkb2N1bWVudGF0aW9uIGZvciB0aGUgU3lub3BzeXMgRGVzaWduV2FyZQo+ID4+ID4+IFhQQ1Mg
aW50ZWdyYXRlZCBvbiB0aGUgUm9ja2NoaXAgUkszNTY4IFNvQy4KPiA+PiA+Pgo+ID4+ID4+IFRo
ZSBYUENTIGlzIGFjY2Vzc2VkIG92ZXIgdGhlIEFQQjMgYnVzIGFuZCBpbnRlcm5hbGx5IGNvbm5l
Y3RlZCB0bwo+ID4+ID4+IGEgTmFuZW5nIENvbWJvIFNlckRlcyBQSFkuICBJdCBzdXBwb3J0cyAx
MDAwQkFTRS1YLCBTR01JSSwgYW5kCj4gPj4gPj4gUVNHTUlJIG1vZGVzLCB3aXRoIGZvdXIgTUlJ
IHBvcnRzLgo+ID4+ID4+Cj4gPj4gPj4gVGhlIGZvdXIgTUlJIHBvcnRzIGFyZSBkZXNjcmliZWQg
YXMgZXRoZXJuZXQtcGNzLW1paUBOIGNoaWxkIG5vZGVzLAo+ID4+ID4+IGNvbnN1bWVkIGJ5IHRo
ZSBSb2NrY2hpcCBYUENTIGdsdWUgZHJpdmVyIGxhdGVyIGluIHRoaXMgc2VyaWVzLgo+ID4+ID4+
Cj4gPj4gPj4gcGh5cyBhbmQgcGh5LW5hbWVzIGFyZSByZXF1aXJlZCBiZWNhdXNlIGR0YnNfY2hl
Y2sgb25seSB2YWxpZGF0ZXMKPiA+PiA+PiByZXF1aXJlZCBwcm9wZXJ0aWVzIGZvciBlbmFibGVk
IG5vZGVzLiBUaGUgU2VyRGVzIGxpbmsgaXMgYSBib2FyZC1sZXZlbAo+ID4+ID4+IGRlc2lnbiBj
aG9pY2UgKGNvbWJwaHkxIG9uIHNvbWUgYm9hcmRzLCBjb21icGh5MiBvbiBvdGhlcnMpLCBzbyB0
aGVzZQo+ID4+ID4+IHByb3BlcnRpZXMgbXVzdCBiZSBwcm92aWRlZCBieSB0aGUgYm9hcmQgZGV2
aWNlIHRyZWUsIG5vdCB0aGUgU29DIGR0c2kuCj4gPj4gPj4KPiA+PiA+PiBUaGUgQ1JVIHJlc2V0
IGxpbmVzIChTUlNUX1hQQ1MqKSBhcmUgaW50ZW50aW9uYWxseSBub3QgZGVzY3JpYmVkOiBubwo+
ID4+ID4+IGluLXRyZWUgdXNlciByZXF1ZXN0cyB0aGVtLCBhbmQgYnJpbmctdXAgcmVsaWVzIG9u
IHRoZSBQRF9QSVBFIHBvd2VyCj4gPj4gPj4gZG9tYWluLCB0aGUgU2VyRGVzIFBIWSBhbmQgdGhl
IGluLUlQIHNvZnQgcmVzZXQuIFRoZXkgY2FuIGJlIGFkZGVkCj4gPj4gPj4gbGF0ZXIgYXMgb3B0
aW9uYWwgd2l0aG91dCBicmVha2luZyBBQkkuCj4gPj4gPj4KPiA+PiA+PiBTaWduZWQtb2ZmLWJ5
OiBDb2lhIFByYW50IDxjb2lhcHJhbnRAZ21haWwuY29tPgo+ID4+ID4+IC0tLQo+ID4+ID4+ICAu
Li4vbmV0L3Bjcy9yb2NrY2hpcCxyazM1NjgteHBjcy55YW1sICAgICAgICAgfCAxMTAgKysrKysr
KysrKysrKysrKysrCj4gPj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCAxMTAgaW5zZXJ0aW9ucygrKQo+
ID4+ID4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL25ldC9wY3Mvcm9ja2NoaXAscmszNTY4LXhwY3MueWFtbAo+ID4+ID4+Cj4gPj4gPj4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvcGNzL3JvY2tj
aGlwLHJrMzU2OC14cGNzLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
bmV0L3Bjcy9yb2NrY2hpcCxyazM1NjgteHBjcy55YW1sCj4gPj4gPj4gbmV3IGZpbGUgbW9kZSAx
MDA2NDQKPiA+PiA+PiBpbmRleCAwMDAwMDAwMDAwMDAwLi43MDNmY2ZmMGUzZjcwCj4gPj4gPj4g
LS0tIC9kZXYvbnVsbAo+ID4+ID4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9uZXQvcGNzL3JvY2tjaGlwLHJrMzU2OC14cGNzLnlhbWwKPiA+PiA+PiBAQCAtMCwwICsx
LDExMCBAQAo+ID4+ID4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5
IE9SIEJTRC0yLUNsYXVzZSkKPiA+PiA+PiArJVlBTUwgMS4yCj4gPj4gPj4gKy0tLQo+ID4+ID4+
ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL25ldC9wY3Mvcm9ja2NoaXAscmsz
NTY4LXhwY3MueWFtbCMKPiA+PiA+PiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21l
dGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4gPj4gPj4gKwo+ID4+ID4+ICt0aXRsZTogUm9ja2NoaXAg
UkszNTY4IFN5bm9wc3lzIERlc2lnbldhcmUgRXRoZXJuZXQgUENTCj4gPj4gPj4gKwo+ID4+ID4+
ICttYWludGFpbmVyczoKPiA+PiA+PiArICAtIENvaWEgUHJhbnQgPGNvaWFwcmFudEBnbWFpbC5j
b20+Cj4gPj4gPj4gKwo+ID4+ID4+ICtkZXNjcmlwdGlvbjogfAo+ID4+ID4+ICsgIFJvY2tjaGlw
IFJLMzU2OCBTb0MgaW50ZWdyYXRlcyBhIFN5bm9wc3lzIERlc2lnbldhcmUgRXRoZXJuZXQgUGh5
c2ljYWwKPiA+PiA+PiArICBDb2RpbmcgU3VibGF5ZXIgKFhQQ1MpLgo+ID4+ID4+ICsgIFRoZSBQ
Q1MgcHJvdmlkZXMgYW4gaW50ZXJmYWNlIGJldHdlZW4gdGhlIE1lZGlhIEFjY2VzcyBDb250cm9s
IChNQUMpCj4gPj4gPj4gKyAgYW5kIHRoZSBQaHlzaWNhbCBNZWRpdW0gQXR0YWNobWVudCAoUE1B
KSBzdWJsYXllciB0aHJvdWdoIGEgTWVkaWEKPiA+PiA+PiArICBJbmRlcGVuZGVudCBJbnRlcmZh
Y2UgKEdNSUkpLgo+ID4+ID4+ICsKPiA+PiA+PiArICBUaGUgWFBDUyBpcyBhY2Nlc3NlZCBvdmVy
IHRoZSBBUEIzIGJ1cyBhbmQgaW50ZXJuYWxseSBjb25uZWN0ZWQgdG8gYQo+ID4+ID4+ICsgIE5h
bmVuZyBDb21ibyBTZXJEZXMgUEhZLgo+ID4+ID4+ICsgIEl0IHN1cHBvcnRzIDEwMDBCQVNFLVgs
IFNHTUlJIGFuZCBRU0dNSUkgbW9kZXMuCj4gPj4gPj4gKwo+ID4+ID4+ICsgIFRoZSBibG9jayBj
b250YWlucyBmb3VyIE1JSSBwb3J0cyB0aGF0IGNhbiBiZSBpbmRpdmlkdWFsbHkgZW5hYmxlZCBh
bmQKPiA+PiA+PiArICByb3V0ZWQgdG8gb25lIG9mIHRoZSBFdGhlcm5ldCBHTUFDIGNvbnRyb2xs
ZXJzIHZpYSB0aGUgcGNzLWhhbmRsZQo+ID4+ID4+ICsgIHByb3BlcnR5IGluIHRoZSBNQUMgZGV2
aWNlIHRyZWUgbm9kZS4KPiA+PiA+PiArCj4gPj4gPj4gK3Byb3BlcnRpZXM6Cj4gPj4gPj4gKyAg
Y29tcGF0aWJsZToKPiA+PiA+PiArICAgIGNvbnN0OiByb2NrY2hpcCxyazM1NjgteHBjcwo+ID4+
ID4+ICsKPiA+PiA+PiArICByZWc6Cj4gPj4gPj4gKyAgICBtYXhJdGVtczogMQo+ID4+ID4+ICsK
PiA+PiA+PiArICAiI2FkZHJlc3MtY2VsbHMiOgo+ID4+ID4+ICsgICAgY29uc3Q6IDEKPiA+PiA+
PiArCj4gPj4gPj4gKyAgIiNzaXplLWNlbGxzIjoKPiA+PiA+PiArICAgIGNvbnN0OiAwCj4gPj4g
Pj4gKwo+ID4+ID4+ICsgIGNsb2NrczoKPiA+PiA+PiArICAgIGl0ZW1zOgo+ID4+ID4+ICsgICAg
ICAtIGRlc2NyaXB0aW9uOiBBUEIzIGJ1cyBpbnRlcmZhY2UgY2xvY2sgKGNsa19jc3JfaSksIHJl
cXVpcmVkIGZvciByZWdpc3RlciBhY2Nlc3MKPiA+PiA+PiArICAgICAgLSBkZXNjcmlwdGlvbjog
RUVFIGNsb2NrIChjbGtfZWVlX2kpLCByZXF1aXJlZCBmb3IgRW5lcmd5IEVmZmljaWVudCBFdGhl
cm5ldCBvcGVyYXRpb24KPiA+PiA+PiArCj4gPj4gPj4gKyAgY2xvY2stbmFtZXM6Cj4gPj4gPj4g
KyAgICBpdGVtczoKPiA+PiA+PiArICAgICAgLSBjb25zdDogY3NyCj4gPj4gPj4gKyAgICAgIC0g
Y29uc3Q6IGVlZQo+ID4+ID4+ICsKPiA+PiA+PiArICBwaHlzOgo+ID4+ID4+ICsgICAgbWF4SXRl
bXM6IDEKPiA+PiA+PiArCj4gPj4gPj4gKyAgcGh5LW5hbWVzOgo+ID4+ID4+ICsgICAgY29uc3Q6
IHNlcmRlcwo+ID4+ID4KPiA+PiA+WW91IGRvbid0IHJlYWxseSBuZWVkIHBoeS1uYW1lcyBpZiB0
aGVyZSBpcyBvbmx5IDEgZW50cnkuCj4gPj4gPgo+ID4+ID4+ICsKPiA+PiA+PiArICBwb3dlci1k
b21haW5zOgo+ID4+ID4+ICsgICAgbWF4SXRlbXM6IDEKPiA+PiA+PiArCj4gPj4gPj4gK3BhdHRl
cm5Qcm9wZXJ0aWVzOgo+ID4+ID4+ICsgICJeZXRoZXJuZXQtcGNzLW1paUBbMC0zXSQiOgo+ID4+
ID4+ICsgICAgdHlwZTogb2JqZWN0Cj4gPj4gPj4gKyAgICBkZXNjcmlwdGlvbjoKPiA+PiA+PiAr
ICAgICAgT25lIG9mIHRoZSBmb3VyIE1JSSBwb3J0cyBvZiB0aGUgWFBDUy4gVGhlIHBvcnQgaXMg
bGlua2VkIHRvIGFuCj4gPj4gPj4gKyAgICAgIEV0aGVybmV0IE1BQyBjb250cm9sbGVyIHZpYSB0
aGUgcGNzLWhhbmRsZSBwcm9wZXJ0eSBpbiB0aGUgTUFDJ3MKPiA+PiA+PiArICAgICAgZGV2aWNl
IHRyZWUgbm9kZS4KPiA+PiA+PiArCj4gPj4gPj4gKyAgICBwcm9wZXJ0aWVzOgo+ID4+ID4+ICsg
ICAgICByZWc6Cj4gPj4gPj4gKyAgICAgICAgZGVzY3JpcHRpb246IE1JSSBwb3J0IG51bWJlci4K
PiA+PiA+PiArICAgICAgICBlbnVtOiBbMCwgMSwgMiwgM10KPiA+PiA+PiArCj4gPj4gPj4gKyAg
ICByZXF1aXJlZDoKPiA+PiA+PiArICAgICAgLSByZWcKPiA+PiA+Cj4gPj4gPldoeSB0aGUgY2hp
bGQgbm9kZXM/IFRoZXkgZG9uJ3QgY29udGFpbiBhbnl0aGluZy4KPiA+PiA+Cj4gPj4gPlBlcmhh
cHMgdGhhdCdzIGR1ZSB0byBwY3MtaGFuZGxlIG5vdCBzdXBwb3J0aW5nIGFyZyBjZWxscyB0byBw
YXNzIHRoZQo+ID4+ID5wb3J0IG51bWJlcj8gVGhhdCdzIGFib3V0IHRvIGNoYW5nZVsxXS4KPiA+
PiA+Cj4gPj4gPlJvYgo+ID4+ID4KPiA+PiA+WzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9kZXZpY2V0
cmVlLW9yZy9kdC1zY2hlbWEvcHVsbC8xOTgKPiA+Pgo+ID4+IEhpIFJvYiwKPiA+Pgo+ID4+IEJv
dGggcG9pbnRzIG1ha2Ugc2Vuc2UuCj4gPj4KPiA+PiAxLiBJJ2xsIGRyb3AgcGh5LW5hbWVzIHNp
bmNlIHRoZXJlJ3Mgb25seSBhIHNpbmdsZSBlbnRyeS4KPiA+Pgo+ID4+IDIuIEZvciB0aGUgZXRo
ZXJuZXQtcGNzLW1paSBjaGlsZCBub2RlczogeW91J3JlIHJpZ2h0IHRoYXQgdGhleSBvbmx5Cj4g
Pj4gICAgY29udGFpbiAncmVnJy4gVGhlIHJlYXNvbiBJIHVzZWQgY2hpbGQgbm9kZXMgaXMgYmVj
YXVzZSBwY3MtaGFuZGxlCj4gPj4gICAgYXJnIGNlbGxzIGFyZSBub3QgYXZhaWxhYmxlIHlldCAt
LSBQUiAjMTk4IGlzIHN0aWxsIG9wZW4gYW5kIGluCj4gPj4gICAgUkZDL2NoYW5nZS1yZXF1ZXN0
IHN0YXRlLgo+ID4+Cj4gPj4gICAgVGhlIFJaTjEgTUlJIGNvbnZlcnRlciBiaW5kaW5nIGRvZXMg
dGhlIHNhbWUgdGhpbmc6IGl0IGRlY2xhcmVzCj4gPj4gICAgTUlJIHBvcnRzIGFzIHN1Ym5vZGVz
IGFuZCByZWZlcmVuY2VzIHRoZSBQQ1MgdmlhIHBjcy1oYW5kbGUsIHVudGlsCj4gPj4gICAgYXJn
IGNlbGxzIGxhbmQuCj4gPj4KPiA+PiAgICBTbyBJJ2QgbGlrZSB0byBrZWVwIHRoZSBjaGlsZCBu
b2RlcyBhcyBhIHRlbXBvcmFyeSB3b3JrYXJvdW5kLCBhbmQKPiA+PiAgICBJJ2xsIGFkZCBhIG5v
dGUgaW4gdGhlIGJpbmRpbmcgdGhhdCB0aGlzIGNhbiBiZSBzaW1wbGlmaWVkIG9uY2UKPiA+PiAg
ICBQUiAjMTk4IGlzIG1lcmdlZC4KPiA+Cj4gPkJpbmRpbmdzIGFyZSBhbiBBQkkuIFlvdSBjYW4n
dCBtZXJnZSB0aGUgYmluZGluZyB0aGVuIGNoYW5nZSBpdC4gUGxlYXNlCj4gPmNvbW1lbnQgb24g
dGhlIFBSIHRoYXQgeW91IGFsbCBuZWVkIGl0Lgo+ID4KPiA+Um9iCj4KPiBIaSBSb2IsCj4KPiBV
bmRlcnN0b29kIG9uIHRoZSBBQkkgcG9pbnQsIGFuZCBJIGRvbid0IHdhbnQgdG8gbWVyZ2UgYSBi
aW5kaW5nIHdlJ2QKPiBoYXZlIHRvIGNoYW5nZSBsYXRlci4KPgo+IENvdWxkIEkgYXNrIGZvciB5
b3VyIGd1aWRhbmNlIG9uIHRoZSBwcmFjdGljYWwgcGF0aD8gVGhpcyBzZXJpZXMgaXMKPiByZWFk
eSwgYW5kIEknZCBsaWtlIHRvIGdldCBpdCBpbnRvIDcuNCBpZiBwb3NzaWJsZSwgc2luY2UgT3Bl
bldydCBhbmQKPiBvdGhlciBkaXN0cm9zIGJhc2UgdGhlaXIgc3VwcG9ydCBvbiBMVFMga2VybmVs
cy4gTWlzc2luZyB0aGlzIHdpbmRvdwo+IG1lYW5zIGEgbG9uZyB3YWl0IGZvciB1c2Vycy4KPgo+
IEdpdmVuIFBSICMxOTggaXMgc3RpbGwgb3BlbiwgSSBzZWUgdGhlc2Ugb3B0aW9uczoKPgo+IDEu
IFdhaXQgZm9yIFBSICMxOTgsIHRoZW4gdXNlIHBjcy1oYW5kbGUgPSA8JnhwY3MgMD4uIE15IGNv
bmNlcm4gaXMgdGhhdAo+ICAgIEkgaGF2ZSBubyB2aXNpYmlsaXR5IGludG8gaXRzIHRpbWVsaW5l
IC0tIGl0IGNvdWxkIGJlIHdlZWtzIG9yIG11Y2gKPiAgICBsb25nZXIgLS0gYW5kIGhvbGRpbmcg
dGhlIHdob2xlIGJpbmRpbmcgb24gdGhhdCBpcyBoYXJkIHRvIHBsYW4KPiAgICBhcm91bmQuCj4K
PiAyLiBLZWVwIHRoZSBjaGlsZCBub2RlcyBhcyB0aGUgZmluYWwgQUJJLCBSWi9OMSBzdHlsZSwg
bm8gcGxhbm5lZAo+ICAgIG1pZ3JhdGlvbi4KPgo+IDMuIFNvbWV0aGluZyBlbHNlIHlvdSdkIHBy
ZWZlci4KPgo+IFdoaWNoIHdvdWxkIHlvdSByZWNvbW1lbmQ/IElmIHdhaXRpbmcgaXMgdGhlIHJp
Z2h0IGNhbGwsIEknbGwgZG8gdGhhdCwKPiBidXQgSSdkIGxpa2UgdG8gdW5kZXJzdGFuZCByb3Vn
aGx5IGhvdyBsb25nIFBSICMxOTggaXMgZXhwZWN0ZWQgdG8gdGFrZS4KPgo+IFRoYW5rcywKPiBD
b2lhCgpIaSBSb2IsCgpUaGFua3MgZm9yIHRoZSBmZWVkYmFjay4gSSB3ZW50IGJhY2sgdG8gdGhl
IFJvY2tjaGlwIE9FTSBTREsgdG8gY2hlY2sgaG93CnRoaXMgaXMgYWN0dWFsbHkgd2lyZWQgdXAs
IGFuZCBpdCBjb25maXJtcyB0aGUgTUlJIHBvcnQgaXMgbm90IGFuCmluZGVwZW5kZW50IGJvYXJk
LWxldmVsIGNvbmZpZ3VyYXRpb24gLS0gaXQgZm9sbG93cyB0aGUgTUFDIHRoZSBTR01JSQpsaW5r
IGlzIHJvdXRlZCB0byAoR01BQzAgLT4gcG9ydCAwLCBHTUFDMSAtPiBwb3J0IDEpLgoKU28gSSd2
ZSBkcm9wcGVkIHRoZSBldGhlcm5ldC1wY3MtbWlpIGNoaWxkIG5vZGVzIGFuZCB0aGUgcGh5LW5h
bWVzCnByb3BlcnR5LCBhbmQgdGhlIGdsdWUgZHJpdmVyIG5vdyBkZXJpdmVzIHRoZSBNSUkgcG9y
dCBmcm9tIHRoZSBNQUMgaWQuClRoZSBiaW5kaW5nIG5vIGxvbmdlciBuZWVkcyBwY3MtaGFuZGxl
IGFyZ3VtZW50IGNlbGxzLCBzbyB3ZSBkb24ndCBoYXZlCnRvIHdhaXQgZm9yIFBSICMxOTguCgpJ
J2xsIHBvc3QgdGhlIHVwZGF0ZWQgc2VyaWVzIG9uIHRoZSA5dGguCgpUaGFua3MsCkNvaWEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
