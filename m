Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFD22C32774
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Aug 2022 03:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6pNknmiD52+lgsxFNcTaAn/xcgIMMT46AffVOshBe+Q=; b=wwV/cyEDOn4Mj7
	Zgf1oZlW6hfNmlr2I+whDqD2EhuYPq3Ql9yobNP+X2st8DHyHVABeizQVWIUcs/XcvkDlmJpdQm2J
	5RtLmMRBVgNqrKtozuZaGJXBjvRIlMkEScdKAwzjA4w+29dTeZdytm30c3y1cg1p+HbFzWhjRfj1N
	fZIf3gmYC7bSM5+TLPnnFAJLYl7MCLteb0DWRtQULVXGFMj2bJIzULTpWUzPfFwZVcabp6w6eac7K
	zNTgDdl3XAZwKQS53r/5yDKIFX767isGcCmHXJq0rg/BE6mfnQKAZgvfTqZq22OzV6e6ilXQJzP5a
	YGWbomRLf1rmJWH6JRjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQgng-00A9es-95; Wed, 24 Aug 2022 03:11:28 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQgnd-00A9da-Ml
	for linux-rockchip@lists.infradead.org; Wed, 24 Aug 2022 03:11:27 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-33387bf0c4aso427470307b3.11
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Aug 2022 20:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=friendlyarm-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=MRoQzdOK6CWcAC6gw+P5C+x1bqwTKNwTT3AYdbkJaY8=;
        b=U4Dn+R0xuJUm2UBAgJOnZYs5h76iFG0xeMtAjYWMUKS6kYXWmYz+W6NV1pGLm/6krp
         cS3tSiQY56T8oztjPaOIlg/yZGc7Kcg7/w4HbuE3ZLGeyMlCIUWzt8rmakqXcjd2U8vS
         UfUjVaw301Pex3T6NFzD5qd0vAJLc2FuS7XPqV13GnsFLnP4LXQW6Q2PvxkeMQYyX2L5
         dw17xgsYdNnOgshkZnOSdHS9S+N7DaBPIN415F0QH98GuD6YSp7Asd1Ghj207Zxb/Djo
         DUtZfjgshfGjX3jY/vjqIG50kPGYWu3ZQWWbACldweDUGIJttc43iKT5NO+0xcR3ETSd
         6HPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=MRoQzdOK6CWcAC6gw+P5C+x1bqwTKNwTT3AYdbkJaY8=;
        b=ZsQrLGgro5beA91iPJS+5cD0Bq9HDgsn3wFmlc8BjUEU32dUd8xzTyESuL/T7rCKLo
         mjOSNoNTrKL2qA1yOjCvvNauOPjyxVDXyil1t6SMPOkBhp+fm2QP+3m+nlTZvCmmJqfw
         9ECnAnEve32GKCBaZlC9jHijhR5OaHFYWHSG7LhHa4zp7mXv2olcmGo7uz0V9Tp1b9Uh
         8XdhzG68E9ZtsjPz6XkjcT5BtUJ+nGSHjBLdjdUd3cwjNYHL4Quesc6xxj7rMhLxFOwv
         vX+4aUhlJSK96r/nMKsMZVArof++wzWeUwJNbp405qYy6szXx9EixWzxJ2JubCpRXwuf
         rKRA==
X-Gm-Message-State: ACgBeo2TJ+VGQHNMIIGOY2dFmM33L+ackD35PBRQbLGo9VeyqFQPbS3K
	tMIOPm2rTxb2tbFxT2so4zNCIrYbyQcWhhmradNumg==
X-Google-Smtp-Source: AA6agR5azhM/Z/AXpPAiiP/iN20sesKIKrIpQUppdkgJegZcoQn5Fq6Cy100clgzY/qN6NhMdmzI7uj2aGADrU7Jipg=
X-Received: by 2002:a25:415:0:b0:696:814:7c77 with SMTP id 21-20020a250415000000b0069608147c77mr3844588ybe.36.1661310683919;
 Tue, 23 Aug 2022 20:11:23 -0700 (PDT)
MIME-Version: 1.0
References: <20220822074139.3810-1-jensenhuang@friendlyarm.com>
 <23552842.6Emhk5qWAg@diego> <CAD=FV=W-ajJDfYcP3P8Jyk_KgsUAbdTtmwiNXqJ=Ab2ojgrUGw@mail.gmail.com>
In-Reply-To: <CAD=FV=W-ajJDfYcP3P8Jyk_KgsUAbdTtmwiNXqJ=Ab2ojgrUGw@mail.gmail.com>
From: Jensen Huang <jensenhuang@friendlyarm.com>
Date: Wed, 24 Aug 2022 11:11:13 +0800
Message-ID: <CAMpZ1qEe7xFr+XaXsS_hWDLnGGA8PfzQiToOjY1N_1ctyQ+KxA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add enable-strobe-pulldown to emmc
 phy on rk3399
To: Doug Anderson <dianders@chromium.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Chris Ruehl <chris.ruehl@gtsys.com.hk>, Brian Norris <briannorris@chromium.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_201125_980738_E7C1EE51 
X-CRM114-Status: GOOD (  20.72  )
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

SGksCgpTb3JyeSBmb3Igc2VuZGluZyBhbiBlbWFpbCBpbiBIVE1MIGZvcm1hdC4KCkkgcmVhbGl6
ZWQgdGhhdCBvbmx5IHNvbWUgZGV2aWNlcyBtYXkgYmUgYWZmZWN0ZWQsIHNvIEkgY29uc2lkZXJl
ZAptb2RpZnlpbmcgcmszMzk5LW5hbm9waTQuZHRzaSBvbmx5LApidXQgb3RoZXIgYm9hcmRzIHdp
dGhvdXQgZXh0ZXJuYWwgcHVsbC1kb3duIHNob3VsZCBzdGlsbCBuZWVkIHRoaXMgcGF0Y2guCgoK
QlIsCkplbnNlbgoKT24gVHVlLCBBdWcgMjMsIDIwMjIgYXQgMTA6MTMgUE0gRG91ZyBBbmRlcnNv
biA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPiB3cm90ZToKPgo+IEhpLAo+Cj4gT24gVHVlLCBBdWcg
MjMsIDIwMjIgYXQgNDo1MyBBTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90
ZToKPiA+Cj4gPiBBbSBNb250YWcsIDIyLiBBdWd1c3QgMjAyMiwgMDk6NDE6MzkgQ0VTVCBzY2hy
aWViIEplbnNlbiBIdWFuZzoKPiA+ID4gSW50ZXJuYWwgcHVsbC1kb3duIGZvciBzdHJvYmUgbGlu
ZSAoR1JGX0VNTUNQSFlfQ09OMls5XSkgd2FzIGRpc2FibGVkCj4gPiA+IGJ5IGNvbW1pdCA4YjVj
MmI0NWI4ZjAsIHdoaWNoIGNhdXNlcyBJL08gZXJyb3IgaW4gSFM0MDAgbW9kZS4KPiA+ID4KPiA+
ID4gVGVzdGVkIG9uIE5hbm9QQy1UNC4KPiA+ID4KPiA+ID4gRml4ZXM6IDhiNWMyYjQ1YjhmMCAo
InBoeTogcm9ja2NoaXA6IHNldCBwdWxsZG93biBmb3Igc3Ryb2JlIGxpbmUgaW4gZHRzIikKPiA+
ID4gU2lnbmVkLW9mZi1ieTogSmVuc2VuIEh1YW5nIDxqZW5zZW5odWFuZ0BmcmllbmRseWFybS5j
b20+Cj4gPgo+ID4gb2ssIHNvIHRoaXMgbG9va3MgbGlrZSBpdCByZXN0b3JlcyBwcmV2aW91cyBm
dW5jdGlvbmFsaXR5Lgo+ID4KPiA+IEknbSBqdXN0IHdvbmRlcmluZyBhcyB0aGUgIm9mZmVuZGlu
ZyIgcGF0Y2ggaXMgZnJvbSAyMDIwLCB3aHkgdGhpcwo+ID4gb25seSB0dXJucyB1cCBub3cuIEFu
eSBpZGVhcz8KPgo+IEFoLCBJIHNlZS4gU28gYmVmb3JlIHRoZSBvZmZlbmRpbmcgcGF0Y2ggd2Ug
dXNlZCB0byBqdXN0IGxlYXZlIHRoZQo+IHB1bGwgc3RhdGUgYXQgd2hhdGV2ZXIgdGhlIGRlZmF1
bHQgd2FzIHdoZW4gdGhlIGtlcm5lbCB3YXMgYm9vdGVkLgo+IEFmdGVyIHRoZSBvZmZlbmRpbmcg
cGF0Y2ggd2UgY2hvc2UgYSBkZWZhdWx0Lgo+Cj4gT24ga2V2aW4gSSBzZWUgYW4gZXh0ZXJuYWwg
cHVsbCBkb3duIG9uIHRoaXMgbGluZS4gRW5hYmxpbmcgYm90aCB0aGUKPiBpbnRlcm5hbCBhbmQg
ZXh0ZXJuYWwgaXMgcHJvYmFibHkgbm90IGEgaHVnZSBkZWFsLCBpdCdsbCBqdXN0IGFmZmVjdAo+
IHRoZSBzdHJlbmd0aCBvZiB0aGUgcHVsbC4KPgo+IE9uIGJvYiBJIF90aGlua18gdGhlIGV4dGVy
bmFsIHB1bGwgZG93biBpcyBhbHNvIHN0dWZmZWQuCj4KPiAuLi5zbyBJIGd1ZXNzIHRoYXQgd291
bGQgZXhwbGFpbiB3aHkgaXQgZGlkbid0IGNhdXNlIGEgcHJvYmxlbSBmb3IgYXQKPiBsZWFzdCB0
aG9zZSB0d28gYm9hcmRzPwo+Cj4gLURvdWcKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
