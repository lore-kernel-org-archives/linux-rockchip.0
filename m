Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F6DBCA0FED
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Sep 2025 16:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvoydFQjkTmefheNxWLIwB80QRyaJfvdf9q1bxCRwsA=; b=HrwdBBbZPCdRtj
	3vEKZ2joNhSQK37qg8a36OF1t6iRxXgHoRuXMFpoKRiWPJN+Y69oi5XqLLUR3fUFQ8D1oYnDqBhYG
	gI4Q//BmazLGJXmw/pMLWEpegSLdyY52oIzjePvKRvYOZxuixdfVX5PcA3vYzMy0wE3CD0szmjxs6
	qDzXgcDLZDeMHMy67iPclQN6ifRkhTxes9tXGkCWaCx0cfSbvVeJ8J79FPlvIjz9SMQ4woU0KsKti
	kMSlBO/oidS9EHCrwhJrs/wUai4WfNnGodqRPscYAG+bh+vSmdJTfDtLBvbWlE+tY8xMHvubLdBGS
	VWXzSxSzi2DgaEd2Vcyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuZ0e-000000030Ei-3NMf;
	Fri, 05 Sep 2025 16:09:56 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuVX2-00000001gkd-2Oby;
	Fri, 05 Sep 2025 12:27:09 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-620724883e6so2920296a12.2;
        Fri, 05 Sep 2025 05:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757075227; x=1757680027; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2ClMPDF0HluOKzI+GNmsNWO4LtH4Zjjqg5QR4CqPXIM=;
        b=fzZe3AsYb9PrJDmbWyjr+d9hT8cC5/iXFpHM/+QLXl2OO6+koJ9bUJ6N0tS36k1MmX
         mdNk7EiKNm1ZTErGxCcdA/0IzNHp4/emskX3zTSkEaenBhBDrMPu6LgLPNML/vx4Gptr
         3fxBzOutwzdV9WI4VQ/z0M5yIEeOMpIVb7340LMZaJJwu906SsWl7ojay7mNz+j2keXj
         rTnIGg5BsxlOD2PzZVITPryg3+zmgBuQXy0geB0XtlOKmed6KQdkW64loU8rdN89jzh8
         DCe+n5Kl6WvwRLs2nO+3mgTgekcE85PF4N5BcwnHzjrqNoU+BSh7NB+rpTb3ptpi7AqV
         yc4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757075227; x=1757680027;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2ClMPDF0HluOKzI+GNmsNWO4LtH4Zjjqg5QR4CqPXIM=;
        b=B1c0W4L0l4+yCFwDTTjBBSMJZLcyubuo81idKSpjlmuHxkm+7V0Sb2aIaHW5+8C3us
         P053DtpK0FceK7CBoKWS6tFLjva/aWq5NBh5AZvi/x3ZPk/m2z8xGda937PU04Ej0qBd
         GeD/H/Bgg/X4tJeYK+7x+UbYJ7aVutIZH9yD3RZFjsXeKoAjoKe7bfPwnHqRekZl7YZy
         cqztvR0iCJ5WhArQPuXN9qFSLU8EDbWGeelyizNA/w18UHmT30TjWY+uYuCB+zeQJJcT
         EgscH5Src+AjCTXHgmoLCjHrdXq2lQwZqZthNNyfb4GK6ZJJrbL+3ilyph1/mFkqVOfi
         qfoQ==
X-Forwarded-Encrypted: i=1; AJvYcCUcDNy2A/BlOhfojpX5CP3LacfTKpkZO8uNvKgtagTULL4vY3RqXW/o0iBGxFySEhxw/gSFHfwcmFWXZxp51HU=@lists.infradead.org, AJvYcCWhr8KnPNNS5OgJgDBlOT8/tz4uqcdmD33aujxzxuiijGj7YlHic3SXOPObU9bBksCqWIOA5mU+RNFVcxD9S5xq@lists.infradead.org
X-Gm-Message-State: AOJu0YyX4GOX985zGHfEK0Fs4ZFgelgExEf6n8tLuFFww3MH7niVLnkp
	aEQT0pE8hm8vqk/IHMH5hjsS2Y3sJQyX75O7Pm8nARgBgnfw3vBWZavkWsSLas99Eu30uM2AO+k
	kdHjwhcQeIx4e56+sWjZjaw2FqvdlNzo=
X-Gm-Gg: ASbGncuqK8cJjxKhG8JiZm5u61mRe5Zj18pnE6ggZqjLke5vnGzx5/+xaVou1AOi8ch
	LBZv/12di+2clY4joXBJ9gMelNj/QxrntyvvSGO0OB2Gv1LtlczMWttiRsJO782XgPtkauQYrIv
	v1fYFPlFx/qcZyoKG/X/0xZWaBoZUfvah//laJfbu2KesKIPcDu2mxmcxZIq/b/FU1wq6wd5yWt
	crbXDAXM6DtSgqAlg==
X-Google-Smtp-Source: AGHT+IEVNnP/U7LUIDN6Mt8LbSIFuDZj1YfEJa6iYw06p0ZNddA0TQZZkmZqSMAeaPrBEuNv6h+hGZaxwhQit2BdnWI=
X-Received: by 2002:a05:6402:27cf:b0:621:b7ba:ef76 with SMTP id
 4fb4d7f45d1cf-621b7baf1e6mr1486424a12.35.1757075226560; Fri, 05 Sep 2025
 05:27:06 -0700 (PDT)
MIME-Version: 1.0
References: <20250905025632.222422-1-cn.liweihao@gmail.com>
 <20250905025632.222422-4-cn.liweihao@gmail.com> <2267196.NgBsaNRSFp@diego>
In-Reply-To: <2267196.NgBsaNRSFp@diego>
From: =?UTF-8?B?5p2O57u06LGq?= <cn.liweihao@gmail.com>
Date: Fri, 5 Sep 2025 20:26:54 +0800
X-Gm-Features: Ac12FXwgzlnAMSQyI-WpHzpeUd7ApymhPLAVoBjM7YjSfL1afRnvVV71jtX5KA8
Message-ID: <CAPEOAkS4gPiXddXi2=RqY7oJW60ewwA54=OX_Ljf1zpAgUf+_Q@mail.gmail.com>
Subject: Re: [PATCH v2 3/8] dt-bindings: clock: rk3368: Add SCLK_MIPIDSI_24M
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh@kernel.org, hjc@rock-chips.com, andy.yan@rock-chips.com, 
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_052708_606568_4FC8865D 
X-CRM114-Status: GOOD (  12.73  )
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

SGksCgpIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiDkuo4yMDI15bm0OeaciDXml6Xl
kajkupQgMTM6NTPlhpnpgZPvvJoKPgo+IEhpLAo+Cj4gQW0gRnJlaXRhZywgNS4gU2VwdGVtYmVy
IDIwMjUsIDA0OjU2OjI3IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgV2Vp
SGFvIExpOgo+ID4gQWRkIGEgY2xvY2sgaWQgZm9yIG1pcGkgZHNpIHJlZmVyZW5jZSBjbG9jaywg
bWlwaSBkc2kgbm9kZSB1c2VkIGl0Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFdlaUhhbyBMaSA8
Y24ubGl3ZWloYW9AZ21haWwuY29tPgo+Cj4gYW5vdGhlciBwcm9jZXNzLXJlbGF0ZWQgY29tbWVu
dCA6LSkgLgo+Cj4gKDEpIFlvdSBhbHJlYWR5IGdvdCBpbiB2MSB0aGUKPiBBY2tlZC1ieTogUm9i
IEhlcnJpbmcgKEFybSkgPHJvYmhAa2VybmVsLm9yZz4KPgo+IFNvIHdoZW4gc2VuZGluZyBhIHYy
LCBwbGVhc2UgaW5jbHVkZSBzdWNoIHJlY2VpdmVkIHRhZ3MKPiAoaWYgdGhlcmUgYXJlIG5vIG1h
am9yIGNoYW5nZXMgdG8gdGhlIHJlbGV2YW50IGNvZGUpCj4KPiBUaGlzIHByZXZlbnRzIHBlb3Bs
ZSBmcm9tIHJldmlld2luZyB0aGluZ3MgbmVlZGxlc3NseSBtdWx0aXBsZSB0aW1lcy4KPiBTbyBw
YXRjaCAzIHdvdWxkIGxvb2sgc29tZXRoaW5nIGxpa2U6Cj4KPiAtLS0tLS0tLS0tLS0KPiBBZGQg
YSBjbG9jayBpZCBmb3IgbWlwaSBkc2kgcmVmZXJlbmNlIGNsb2NrLCBtaXBpIGRzaSBub2RlIHVz
ZWQgaXQuCj4KPiBBY2tlZC1ieTogUm9iIEhlcnJpbmcgKEFybSkgPHJvYmhAa2VybmVsLm9yZz4K
PiBTaWduZWQtb2ZmLWJ5OiBXZWlIYW8gTGkgPGNuLmxpd2VpaGFvQGdtYWlsLmNvbT4KPiAtLS0t
LS0tLS0tLS0KPgo+ICgyKSBBcyBjYW4gYmUgc2VlbiBpbgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xpbnV4LXJvY2tjaGlwLzE3NTY5MDE5NTAxMy4zNzcxNDg4LjQzNTg3MDc4NjIyNDg3MzI1
Ny5iNC10eUBzbnRlY2guZGUvCj4KPiBJIGFscmVhZHkgYXBwbGllZCB0aGUgdHdvIGNsb2NrIHBh
dGNoZXMsIHNvIGluIG5ld2VyIHZlcnNpb25zIGRvbid0Cj4gc2VuZCB0aGVtIGFueW1vcmUuCgpH
b3QgaXQgYW5kIHRoYW5rcyBmb3IgeW91ciBwYXRpZW50IGV4cGxhaW4uCgpZb3VycywKV2VpaGFv
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
