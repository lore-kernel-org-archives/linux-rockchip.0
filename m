Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE027CD1284
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Apr 2024 17:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F8nkWVNUHsBzdOAFDkAiscdBjtQmLLlFEbc0uF1O71A=; b=s38yZNT/qUQJeG
	QlrWc+X5p5pzNtz1ZZtyPwD4jWWuKSOV2RqpdDe1nPDKl/EfLbF4JO/U3MAvywFA8ao5lScYvnAZK
	hR2DQkILMALcAT+a4+S/w1zloY7KuILtyxbKtfM95efu7Qd7O6hVSnAFAEJ3JX+FSOPhJfkK9AAxf
	TO+5AlljMR7gXt7M8OdJTROHxSeuAlGTt4ABjc/cWe2JsByDPGf1CifLNUwpQLyVhU56xRzfbOrb6
	Ixt7KNRvU2CgIpoc9/bizOPXHOs9YRaVfx2+NZi7NYBeI9YOwYTLh6IlIdgLsUay+NPyrcmWuJtvI
	cvwN85MHRuOsdXNrDUYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsRND-00000003jhL-3SV7;
	Thu, 04 Apr 2024 17:59:39 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsRNA-00000003jez-0Fhg
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Apr 2024 17:59:37 +0000
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-6e6b01c3dc3so786754a34.2
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Apr 2024 10:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1712253574; x=1712858374; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gtbOwmF31Kwl4TtfLzGBtUJJifAFG8EYmATKNI7DLsY=;
        b=T8giml2lrZpB5JXCIiMq8aM3M88oCETOPTrr8ebxJ7Epnch9042b4vnB6ehpe1BDm3
         WY79JPANRp8Hm6rxYXfxqUqVSQzb6CwnyphfyCHN03WS5CHRL+WmT7o3pJMXtaFUjrMm
         aUu9ym1LPY4FsG8WKPfXFtxLpDS7wHSsJAmJwwe0K/oJFYBd9kf5cgtPoTDEHG55/6QY
         eRbyB0EhQBzwdlIKBlVxTL9LiZGZGWRLkpKIzpJyBawaU/u8+am8T3CB6Z3pe2RnF+d6
         PNwTBxI/Ptg6tYnCn1qzUIZWoK9rlNBsdVpddWLhD3GZen85kJWX0iePlhgDRRV0y6kU
         yscw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712253574; x=1712858374;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gtbOwmF31Kwl4TtfLzGBtUJJifAFG8EYmATKNI7DLsY=;
        b=LRPWP1M11wpoGTiTe7uSP2Zd3nXyPl2HhZqDVaOCGQQJORY4SqEKi/YxVpx/No6Uut
         xxapbOYRoiTog4qY40/WZB6XD2jAdKo+DMK2vukt5NV5D98VIv4bCEW0HGjOgHVUX8KM
         C01abhPuQyyvVYdIzN9Os6FnDQohZJ4gaP/JdlFYeji9XQ5G83r+kQa3H+7FgwwO/sWP
         pjfU5c1zQK18RMemio3B0+2N8eASTlJRuFUtPv3VAGecpcK+hu9qCozwqV9wJ76aTzkH
         okY9566kzxrfYtYjFIwxXFlj9juK3HlxhisJHNpc8IYExV8VbmgGLNXlHn8ADjfEElOl
         uKlw==
X-Forwarded-Encrypted: i=1; AJvYcCWWLb11uGV8iuNwXLHHdZtIK1u3gKKGhol+Rr8PKSyO2+m34VKJwWP06zAdNdRTG5pKhtabRatB12dWXXdf890yZr0qcOjEAdwQnCYRf3mUft4R
X-Gm-Message-State: AOJu0YyNCdVJUpCbFx3AUWrbSMLbsWBpTRs6Jv3PcPDUTqxD+VHqZqK7
	pHBw/HCwAJA3yCS63UBEaRy38mAkdEVJIe2rqzWxK1C0XbkUbiPVGYunGbSS4y+GA4E7oUSsmpr
	P398=
X-Google-Smtp-Source: AGHT+IFYhq0L3gKO1QVmkYzFz1+veAdcyYTGN019NpAj6tZTzQ4zvNjtwKR8OUKV4sfG/YOgLvTArg==
X-Received: by 2002:a9d:7cc1:0:b0:6e8:9461:1eb5 with SMTP id r1-20020a9d7cc1000000b006e894611eb5mr3240908otn.38.1712253574062;
        Thu, 04 Apr 2024 10:59:34 -0700 (PDT)
Received: from nicolas-tpx395.localdomain ([2606:6d00:17:6448:fa75:a4ff:fe45:b56])
        by smtp.gmail.com with ESMTPSA id xx10-20020a05620a5d8a00b0078a3a648bc3sm6066080qkn.2.2024.04.04.10.59.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 10:59:33 -0700 (PDT)
Message-ID: <e4d01c27aa976c44e0b7122e39111be062a4deb4.camel@ndufresne.ca>
Subject: Re: [PATCH] media: verisilicon: AV1: Be more fexible on postproc
 capabilities
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	heiko@sntech.de
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
Date: Thu, 04 Apr 2024 13:59:33 -0400
In-Reply-To: <20240328093439.18712-1-benjamin.gaignard@collabora.com>
References: <20240328093439.18712-1-benjamin.gaignard@collabora.com>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual; keydata=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
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_105936_162804_37E01D75 
X-CRM114-Status: GOOD (  13.32  )
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

SGksCgpMZSBqZXVkaSAyOCBtYXJzIDIwMjQgw6AgMTA6MzQgKzAxMDAsIEJlbmphbWluIEdhaWdu
YXJkIGEgw6ljcml0wqA6Cj4gUkszNTg4IHBvc3QtcHJvY2Vzc29yIGJsb2NrIGlzIGFibGUgdG8g
Y29udmVydCAxMCBiaXRzIHN0cmVhbXMKPiBpbnRvIDggYml0cyBwaXhlbHMgZm9ybWF0LgoKRG9l
cyBpdCBjb21lIHdpdGggYW55IEhEUiB0byBTRFIgY2FwYWJpbGl0aWVzID8gY2F1c2Ugc3RyaXBw
aW5nIG9mZiAyIGJpdHMgbWVhbnMKdGhhdCB0b25lIG1hcHBpbmcgd2lsbCBjYXVzZSBhIGxvdCBv
ZiBiYW5kaW5nIGFzIGl0IHdvbid0IGhhdmUgdGhlIGV4cGVjdGVkCnByZWNpc2lvbi4gSSdtIHNp
bXBseSB0cnlpbmcgdG8gbWFrZSB1cCB0aGUgYmlnIHBvcnRyYWl0IHNvIHdlIGRvbid0IGp1c3Qg
b2ZmZXIKeWV0IGFub3RoZXIgZm9vdCBndW4uIEJ1dCBwZXJoYXBzIGl0cyBmaW5lIHRvIG9mZmVy
IHRoaXMsIGl0cyBqdXN0IHRoYXQgd2UgZG9uJ3QKaGF2ZSBhIG1lY2hhbmlzbSB0byByZXBvcnQg
d2hpY2ggcGl4ZWwgZm9ybWF0IGluIHRoZSBzZWxlY3Rpb24gd2lsbCBjYXVzZSBkYXRhCmxvc3Qu
CgpOaWNvbGFzCgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1p
bi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+IEZpeGVzOiAwMDNhZmRhOTdjNjUgKCJtZWRpYTog
dmVyaXNpbGljb246IEVuYWJsZSBBVjEgZGVjb2RlciBvbiByazM1ODgiKQo+IC0tLQo+ICBkcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdV9ody5jIHwgMSAtCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1X2h3LmMgYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdV9ody5jCj4gaW5kZXggZjk3NTI3
NjcwNzgzLi45NjQxMjJlN2MzNTUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHVfaHcuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1X2h3LmMKPiBAQCAtODIsNyArODIsNiBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IGhhbnRyb19mbXQgcm9ja2NoaXBfdnB1OTgxX3Bvc3Rwcm9jX2Zt
dHNbXSA9IHsKPiAgCXsKPiAgCQkuZm91cmNjID0gVjRMMl9QSVhfRk1UX05WMTIsCj4gIAkJLmNv
ZGVjX21vZGUgPSBIQU5UUk9fTU9ERV9OT05FLAo+IC0JCS5tYXRjaF9kZXB0aCA9IHRydWUsCj4g
IAkJLnBvc3Rwcm9jZXNzZWQgPSB0cnVlLAo+ICAJCS5mcm1zaXplID0gewo+ICAJCQkubWluX3dp
ZHRoID0gUk9DS0NISVBfVlBVOTgxX01JTl9TSVpFLAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
