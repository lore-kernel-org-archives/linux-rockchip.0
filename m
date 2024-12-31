Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 558ADE7718B
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Dec 2024 18:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWIlEEfwc0sa9jHRatID7i+ye2mOyqMOYkBHS9nfCtY=; b=Mb/iFqKWZ/hxCd
	V/NhBvP0GupNhqFBUZZamS5FHxTVl8cX0f9MbsZ2eZdJnbtM+sbcbRzhPAJQ+sDoLVPWLP/VEpkuN
	CEib8w9nNOGMrYlG/nKD4/m+We944K/VpSXiVAVi6+5bBFhoe0tKdUUDPY+ChqR0m2Bq9qt2ipoNr
	JB3H6LYN/Wb9ANQvaOBnlt2OiM0geOCKG8Div1tOaSUdB+w7+3OloxfsyCKrvyaoTfzb/prIuoTkt
	E3N/U3wz/pVHnIJ6CU0kDzSWbQMvvv4I7eKOzdAXzkIKMCRGcq+11OYRj0p0HWUidN732Ol0vS5+e
	vT/kM4/tbKW7yp+JEJ2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tShKc-00000007cM5-066v;
	Tue, 31 Dec 2024 18:51:06 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tShJQ-00000007cFc-2wei;
	Tue, 31 Dec 2024 18:49:54 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-2ee709715d9so10995946a91.3;
        Tue, 31 Dec 2024 10:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1735670992; x=1736275792; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kltap3Pv1hlN9UPAmHZET72hjTYvMQFRlhAGev33Mns=;
        b=VE9PT2h2eN9iy1SRjCA7ZnYMQs3Tfp30yOKD95uG8aGYPwA9lX2FeFRJdwHkSUgz4D
         2tHG9iE54yNNn90KE9u6veDIy3DBdkCOk4Jz+xgoJzsh8FTNna563t7vbddTWNfyt4sY
         +5s9mPU9dV3ZzqYrf96ct2NDpEM3StQy+3w0vt5nQJxNkF8JDuiCgbHjHuVlP9ACl0lW
         DK2203gW7NHQX5ed0aAw2SRl4hIjvwEmddaE315LdvHN8qMohjPsE7supu4Sa8mPi3Zk
         nETAxXJVWcqMo1qrJjfyKczyiuqLy2uL6CDKr9e5qpS/t0tzcoMZGqTod88+6AamKJ8Y
         dbPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735670992; x=1736275792;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kltap3Pv1hlN9UPAmHZET72hjTYvMQFRlhAGev33Mns=;
        b=IKjfqOLYNW+paO1W4/AT8c/4kiiz9lvsQcf+ZuEj08X/ZQ0eN5mW8MbQU28b1Z3pKo
         Z8znkCCssecXdZM5u1l90nTlMpxcdk6hqJfQv3LIpeKbvTpOI1ek7CdtdG3X7z74Zfge
         sHjEmYWk4Wdoxz7yslTJeUkmG6+pQIuIQx0T/RK2gc008D4oKrEYxU5F2qnJjagZm3Mh
         L6I3UKSTX5oJ0MawT920eEZR89/zEkHGjipTMbKLwIOkR8YpscPHTMa/DoULBRl+ItPG
         f5nn1sbS7VMcsr8Nx0yVPxHmMERBTZMVEjqk8p2Tute8uXk6+OQyxFWKpzmeGYmVswJY
         zoaQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwZqHWp2y1uvo85RkRlv5fN3zz12RT0VCUJDEW36Qhrr+R+bOwylYb3dS6i3IFrbztghyvGGA18ZIAcl/Eg+g=@lists.infradead.org, AJvYcCWgFY73xoUx+SO0S9TXoFA2Xc1ovRpXWoAvpMiKMNUaHDoi6j5XYPIs2KVS3W2poSm/SYT++EfGSn1LP8/ZPiho@lists.infradead.org, AJvYcCWpQgnQapiopXhKiPq+m1e66z4ZStga+5MG+4DIkZuUiAC8qMhNav0W3tkMh6ENOTmoh3tF4/hChEmFVmcRtQ8=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywvo/q6+F7GYLm7XcZgjzi0Cv7cqSs7tjF8vUJ+oKgxQoUJKyvu
	CKTu83zmr/loAoJlg8XqxYT1369Mv2N6IZgKLGD0AiNu78zAsZiMLKHV1YIpiKvAeK0TLAD0K9r
	xyennLr9k2O3lhqGpvWXsRcwuApY=
X-Gm-Gg: ASbGncv9EQhKFIwaNp/ao02RypOBDpc3oHZ+MgROjmqBMavEP2HpYNfBocgoyWIDWi0
	fgowR5UMEWA7pmiL56IfFOvNDF2FzJNWssXvNKt8sUQgYfiyu1HzvcZvHDfLk1KVYWvq7vK0=
X-Google-Smtp-Source: AGHT+IG5FmkROQoSQHWr4cIegxX2It9OOsT8OUh7KWPdH7VQgx2qIDviezjcsQv6GTMSR51Q0h0ZJEqmX+Qz4Kpzuw4=
X-Received: by 2002:a17:90a:d645:b0:2ef:30ec:14c9 with SMTP id
 98e67ed59e1d1-2f452e4ad37mr57281196a91.18.1735670991720; Tue, 31 Dec 2024
 10:49:51 -0800 (PST)
MIME-Version: 1.0
References: <20241224-drm-bridge-hdmi-connector-v10-3-dc89577cd438@linaro.org>
 <20241231004311.2574720-1-martin.blumenstingl@googlemail.com> <l3u3wtnxyhrwjynevkwfjwarisc4yt4xy2rbzf5kb7k5l5dw3n@lxqtimymyjg6>
In-Reply-To: <l3u3wtnxyhrwjynevkwfjwarisc4yt4xy2rbzf5kb7k5l5dw3n@lxqtimymyjg6>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 31 Dec 2024 19:49:40 +0100
Message-ID: <CAFBinCAh8iazDNx6GtOOJyXh_V-NfUs6Uf=ywN9kvQGPEmjrKQ@mail.gmail.com>
Subject: Re: [PATCH v10 03/10] drm/connector: implement generic HDMI audio helpers
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Laurent.pinchart@ideasonboard.com, airlied@gmail.com, 
	alain.volmat@foss.st.com, alim.akhtar@samsung.com, andrzej.hajda@intel.com, 
	andy.yan@rock-chips.com, angelogioacchino.delregno@collabora.com, 
	broonie@kernel.org, chunkuang.hu@kernel.org, dave.stevenson@raspberrypi.com, 
	dri-devel@lists.freedesktop.org, heiko@sntech.de, hjc@rock-chips.com, 
	inki.dae@samsung.com, jani.nikula@linux.intel.com, jernej.skrabec@gmail.com, 
	jonas@kwiboo.se, kernel-list@raspberrypi.com, krzk@kernel.org, 
	kyungmin.park@samsung.com, lgirdwood@gmail.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sound@vger.kernel.org, 
	linux@armlinux.org.uk, maarten.lankhorst@linux.intel.com, 
	matthias.bgg@gmail.com, mcanal@igalia.com, mripard@kernel.org, 
	neil.armstrong@linaro.org, p.zabel@pengutronix.de, perex@perex.cz, 
	ple@baylibre.com, rfoss@kernel.org, rgallaispou@gmail.com, simona@ffwll.ch, 
	sw0312.kim@samsung.com, tiwai@suse.com, tzimmermann@suse.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241231_104952_745680_5D774895 
X-CRM114-Status: GOOD (  16.87  )
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

T24gVHVlLCBEZWMgMzEsIDIwMjQgYXQgMzozNOKAr0FNIERtaXRyeSBCYXJ5c2hrb3YKPGRtaXRy
eS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4gd3JvdGU6ClsuLi5dCj4gPiBJIGNoZWNrZWQgYWxsIGlu
c3RhbmNlcyBvZiBzdHJ1Y3QgaGRtaV9jb2RlY19vcHMgaW4gdjYuMTMtcmMzIGFuZCBpdAo+ID4g
c2VlbXMgdGhhdCB0aGVyZSBpcyBvbmx5IGEgc2luZ2xlIGRyaXZlciB3aGljaCB1c2VzIHRoZSAu
cHJlcGFyZQo+ID4gY2FsbGJhY2sgKGRyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2hkbWkuYykuIEFs
bCBvdGhlciBkcml2ZXJzIHNlZW0gdG8KPiA+IGltcGxlbWVudCAuaHdfcGFyYW1zIGluc3RlYWQu
Cj4KPiBZZXMuIEhvd2V2ZXIgLmh3X3BhcmFtcyBkb24ndCBoYXZlIGFjY2VzcyB0byB0aGUgaW5m
b2ZyYW1lIGNvbnRlbnRzLCBzbwo+IEkgaGFkIHRvIHNldHRsZSBvbiBpbXBsZW1lbnRpbmcgLnBy
ZXBhcmUuCldoaWxlIGRlYnVnZ2luZyBJIG5vdGljZWQgc29tZXRoaW5nIHVucmVsYXRlZCB0byBt
eSBwcm9ibGVtOgpoZG1pX2NvZGVjX3NwZGlmX2RhaV9vcHMgZG9lcyBub3QgaW1wbGVtZW50IC5w
cmVwYXJlKCkuCkZZSSBqdXN0IGluIGNhc2Ugc29tZW9uZSB3YW50cyB0byB1c2UgeW91ciBwYXRj
aGVzIGFuZCBmZWVkIHRoZQpoZG1pLWNvZGVjIHdpdGggU1BESUYgaW5zdGVhZCBvZiBJMlMuCgo+
ID4KPiA+IFRoZSBhdWRpbyBjb250cm9sbGVyIGNvZGUgZm9yIG15IHBsYXRmb3JtIGlzIGFscmVh
ZHkgdXBzdHJlYW06Cj4gPiAtIHNvdW5kL3NvYy9tZXNvbi9haXUtY29kZWMtY3RybC5jCj4gPiAt
IHNvdW5kL3NvYy9tZXNvbi9haXUtZW5jb2Rlci1pMnMuYwo+ID4gLSBzb3VuZC9zb2MvbWVzb24v
YWl1LWZpZm8taTJzLmMKPiA+Cj4gPiBNeSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgeW91IGhhdmUg
YSBwbGF0Zm9ybSB3aXRoIGEgbG9udGl1bS1sdDk2MTEKPiA+IEhETUkgY29udHJvbGxlciBhdmFp
bGFibGUgZm9yIHRlc3RpbmcuIENhbiB5b3UgcGxlYXNlIGhlbHAgbWUKPiA+IGludmVzdGlnYXRl
IGFuZCBmaW5kIG91dCB3aGljaCBwaWVjZSBvZiBjb2RlIGlzIGNhbGxpbmcKPiA+IGhkbWlfY29k
ZWNfcHJlcGFyZSgpIGFuZCB0aGVyZWZvcmUgbHQ5NjExX2hkbWlfYXVkaW9fcHJlcGFyZSgpIG9u
Cj4gPiB5b3VyIGJvYXJkPwo+Cj4gU3VyZSwgdGhpcyBpcyB0aGUgY2FsbCB0cmFjZSBvbiBteSBw
bGF0Zm9ybSAoUXVhbGNvbW0gU0RNODQ1LAo+IHNkbTg0NS1kYjg0NWMuZHRzKToKPgo+IGx0OTYx
MV9oZG1pX2F1ZGlvX3ByZXBhcmUrMHgxYy8weGMwIChQKQo+IGRybV9icmlkZ2VfY29ubmVjdG9y
X2F1ZGlvX3ByZXBhcmUrMHgyYy8weDQwIChMKQo+IGRybV9icmlkZ2VfY29ubmVjdG9yX2F1ZGlv
X3ByZXBhcmUrMHgyYy8weDQwCj4gZHJtX2Nvbm5lY3Rvcl9oZG1pX2F1ZGlvX3ByZXBhcmUrMHgy
NC8weDMwCj4gaGRtaV9jb2RlY19wcmVwYXJlKzB4ZWMvMHgxNDQKPiBzbmRfc29jX3BjbV9kYWlf
cHJlcGFyZSsweDc4LzB4MTBjClRoYW5rIHlvdSwgdGhpcyBoZWxwcyEgc25kX3NvY19wY21fZGFp
X3ByZXBhcmUoKSBpcyB3aGVyZSBpdCBicmVha3MgZm9yIG1lLgpJIHN1c3BlY3QgdGhhdCBpdCdz
IGFuIHNvdW5kIGNhcmQgaXNzdWUgb24gb3VyIHBsYXRmb3JtLCBzbyBJJ20gaG9waW5nCnRoYXQg
SmVyb21lIChhdXRob3Igb2YgdGhlIEFtbG9naWMgQVNvQyBkcml2ZXJzKSB3aWxsIGhlbHAgbWUg
ZGVidWcKaXQ6IFswXQoKCkJlc3QgcmVnYXJkcywKTWFydGluCgoKWzBdIGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2xpbnV4LWFtbG9naWMvQ0FGQmluQ0RkaUozVU5WVWNTaGpxPTdVMj1vVXdUM2Np
WWRLU3VaNVRkY3Jpa3hGQnBnQG1haWwuZ21haWwuY29tLwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
