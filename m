Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B51CC32796
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Aug 2022 14:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M6f0CDS+zGxn3hVNt6RxGSAzQ3DWXG1ngA6BAtYqwME=; b=CYEr0SJ+5aDcly
	pjSUVkg9QO/4W0C59pBYuQG5anM+dVkaj9mcpWcs0ag/g/gX4bc5RCrhis1SsdQq3pVXtG5iU21E5
	34UBGJHhL4Pc0cBRtWy27iZHWWGfOWn3tVe+DAdCgu0IdxW9UjkXqvK4kb8OlOFzN+58Y8y3fI/b3
	x91h0aS7ih0dJBAvNZnk3r6YBIoCq/TqYzuP2b34HccfevZKC+4LTtkwkKz2gxoaHyf5GTykkjhxo
	JaL5zayJOG3CPhfZJ/WIMk2VoKAR+U5Z2bA8Avh459AE0Nyv3m2hc7cYshqS2TlHy7i1esmrTSI0m
	8AZpWbH+Vj6DGM80oafA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQrpe-00DpSn-30; Wed, 24 Aug 2022 14:58:14 +0000
Received: from mail-io1-xd2c.google.com ([2607:f8b0:4864:20::d2c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQrpS-00DpMn-Np
	for linux-rockchip@lists.infradead.org; Wed, 24 Aug 2022 14:58:04 +0000
Received: by mail-io1-xd2c.google.com with SMTP id r141so13561080iod.4
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Aug 2022 07:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=yF4Z8Wba5KOhLWJ2hFirrTICWXMXcXiCQAsAVYho6bs=;
        b=SDns1Nk4QoTPheeQ1bpwTTyzwsCPkpnhEUdDJ1mLOtNBX5aaBxoN/Pd1JSweF1nXog
         DJd0OqK+z9SN3tXaoigWDHgRkIkvbEq+bygb3E91A/dOfk49qRSp1wuS3phar/YBrnz8
         3SWwE/rsMfEFGfKz5ysQW9BzcVYkjdOGYHTV4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=yF4Z8Wba5KOhLWJ2hFirrTICWXMXcXiCQAsAVYho6bs=;
        b=WuU82xaUSIFFCHWQN0ky/vfahdRLHBunG9MyyN+7r49jf2ubfmwZNZv2IKXzUxERtH
         4fAcLGZKkFgm/KbMUiBaiNMko+29s/ItQh4+ns70QhWs9INXxxD47k8IsKM8kf6dF++O
         B4O4Qf2OlYYbkDj7ReGrYpQ3np+kARmN9JbV4+YJYusGMzo2/yqfdinVJMDZZ2Xcxngj
         4nPhEqHB/+Wn6ZUW96V6xS3bbb27fZByYivnSKSuaQ9O53PgAUUCGmx9YKQoJ6dQyvaH
         wkZf2tpTgLka9s6Thi8rgLzQ8rcvNdBD/r/4kjFY87bsSu27U/ijsSxafES+xTi+kvl7
         smGw==
X-Gm-Message-State: ACgBeo2Go9hcPSO6GlFdz3hDNRGnmSVKa0ieHBfklhkfiggqeg3dPGCR
	bM3N21K3rW8nqA2Tvgjbapfm8svVl9Wqn6+y7/I=
X-Google-Smtp-Source: AA6agR5UF6CdTiE1Z77jRAhtyod05aAUGKxRYsoLpuAWUusjmyLY5UVr8eKWFMq59WDbv24YnLsOHw==
X-Received: by 2002:a05:6638:1450:b0:346:8a18:737c with SMTP id l16-20020a056638145000b003468a18737cmr14838295jad.149.1661353079110;
        Wed, 24 Aug 2022 07:57:59 -0700 (PDT)
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com. [209.85.166.181])
        by smtp.gmail.com with ESMTPSA id cb13-20020a0566381b0d00b00349fc533abesm1467997jab.123.2022.08.24.07.57.58
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 07:57:58 -0700 (PDT)
Received: by mail-il1-f181.google.com with SMTP id h8so4991660ili.11
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Aug 2022 07:57:58 -0700 (PDT)
X-Received: by 2002:a92:60e:0:b0:2e8:f08b:de04 with SMTP id
 x14-20020a92060e000000b002e8f08bde04mr2131199ilg.177.1661353077650; Wed, 24
 Aug 2022 07:57:57 -0700 (PDT)
MIME-Version: 1.0
References: <20220822074139.3810-1-jensenhuang@friendlyarm.com>
 <23552842.6Emhk5qWAg@diego> <CAD=FV=W-ajJDfYcP3P8Jyk_KgsUAbdTtmwiNXqJ=Ab2ojgrUGw@mail.gmail.com>
 <CAMpZ1qEe7xFr+XaXsS_hWDLnGGA8PfzQiToOjY1N_1ctyQ+KxA@mail.gmail.com>
In-Reply-To: <CAMpZ1qEe7xFr+XaXsS_hWDLnGGA8PfzQiToOjY1N_1ctyQ+KxA@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 24 Aug 2022 07:57:44 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U-=2GpQTb0N1p3Qe2TAb=JhyZJw2V8T-qbLs5TYhW7qA@mail.gmail.com>
Message-ID: <CAD=FV=U-=2GpQTb0N1p3Qe2TAb=JhyZJw2V8T-qbLs5TYhW7qA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add enable-strobe-pulldown to emmc
 phy on rk3399
To: Jensen Huang <jensenhuang@friendlyarm.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Chris Ruehl <chris.ruehl@gtsys.com.hk>, Brian Norris <briannorris@chromium.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220824_075802_825916_A784159F 
X-CRM114-Status: GOOD (  28.57  )
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

SGksCgpPbiBUdWUsIEF1ZyAyMywgMjAyMiBhdCA4OjExIFBNIEplbnNlbiBIdWFuZwo8amVuc2Vu
aHVhbmdAZnJpZW5kbHlhcm0uY29tPiB3cm90ZToKPgo+IEhpLAo+Cj4gU29ycnkgZm9yIHNlbmRp
bmcgYW4gZW1haWwgaW4gSFRNTCBmb3JtYXQuCj4KPiBJIHJlYWxpemVkIHRoYXQgb25seSBzb21l
IGRldmljZXMgbWF5IGJlIGFmZmVjdGVkLCBzbyBJIGNvbnNpZGVyZWQKPiBtb2RpZnlpbmcgcmsz
Mzk5LW5hbm9waTQuZHRzaSBvbmx5LAo+IGJ1dCBvdGhlciBib2FyZHMgd2l0aG91dCBleHRlcm5h
bCBwdWxsLWRvd24gc2hvdWxkIHN0aWxsIG5lZWQgdGhpcyBwYXRjaC4KCkkgZ3Vlc3MgdGhlIG90
aGVyIGFsdGVybmF0aXZlIHdvdWxkIGJlIHRvIGNoYW5nZSBob3cgdGhlIGR0IHByb3BlcnR5Cndv
cmtzLiBZb3UgY291bGQgc2F5OgoKMS4gSWYgYGVuYWJsZS1zdHJvYmUtcHVsbGRvd25gIGlzIHNl
dCB0aGVuIGVuYWJsZSB0aGUgc3Ryb2JlIHB1bGxkb3duLgoKMi4gSWYgYGVuYWJsZS1zdHJvYmUt
cHVsbGRvd25gIGlzIG5vdCBzZXQgdGhlbiBkb24ndCB0b3VjaCB0aGUgcGluIGluCnRoZSBrZXJu
ZWwuCgozLiBJZiBzb21lb25lIGxhdGVyIG5lZWRzIHRvIGV4cGxpY2l0bHkgZGlzYWJsZSB0aGUg
c3Ryb2JlIHB1bGxkb3duCnRoZXkgY291bGQgYWRkIGEgbmV3IHByb3BlcnR5IGxpa2UgYGRpc2Fi
bGUtc3Ryb2JlLXB1bGxkb3duYC4KCgpPYnZpb3VzbHkgdGhlcmUgYXJlIHRyYWRlb2ZmcyBiZXR3
ZWVuIHRoYXQgYW5kIHdoYXQgeW91J3ZlIGRvbmUgYW5kCkknbSBoYXBweSB0byBsZXQgb3RoZXJz
IG1ha2UgdGhlIGNhbGwgb2Ygd2hpY2ggdGhleSdkIHByZWZlci4KCgo+IEJSLAo+IEplbnNlbgo+
Cj4gT24gVHVlLCBBdWcgMjMsIDIwMjIgYXQgMTA6MTMgUE0gRG91ZyBBbmRlcnNvbiA8ZGlhbmRl
cnNAY2hyb21pdW0ub3JnPiB3cm90ZToKPiA+Cj4gPiBIaSwKPiA+Cj4gPiBPbiBUdWUsIEF1ZyAy
MywgMjAyMiBhdCA0OjUzIEFNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3Rl
Ogo+ID4gPgo+ID4gPiBBbSBNb250YWcsIDIyLiBBdWd1c3QgMjAyMiwgMDk6NDE6MzkgQ0VTVCBz
Y2hyaWViIEplbnNlbiBIdWFuZzoKPiA+ID4gPiBJbnRlcm5hbCBwdWxsLWRvd24gZm9yIHN0cm9i
ZSBsaW5lIChHUkZfRU1NQ1BIWV9DT04yWzldKSB3YXMgZGlzYWJsZWQKPiA+ID4gPiBieSBjb21t
aXQgOGI1YzJiNDViOGYwLCB3aGljaCBjYXVzZXMgSS9PIGVycm9yIGluIEhTNDAwIG1vZGUuCj4g
PiA+ID4KPiA+ID4gPiBUZXN0ZWQgb24gTmFub1BDLVQ0Lgo+ID4gPiA+Cj4gPiA+ID4gRml4ZXM6
IDhiNWMyYjQ1YjhmMCAoInBoeTogcm9ja2NoaXA6IHNldCBwdWxsZG93biBmb3Igc3Ryb2JlIGxp
bmUgaW4gZHRzIikKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKZW5zZW4gSHVhbmcgPGplbnNlbmh1
YW5nQGZyaWVuZGx5YXJtLmNvbT4KPiA+ID4KPiA+ID4gb2ssIHNvIHRoaXMgbG9va3MgbGlrZSBp
dCByZXN0b3JlcyBwcmV2aW91cyBmdW5jdGlvbmFsaXR5Lgo+ID4gPgo+ID4gPiBJJ20ganVzdCB3
b25kZXJpbmcgYXMgdGhlICJvZmZlbmRpbmciIHBhdGNoIGlzIGZyb20gMjAyMCwgd2h5IHRoaXMK
PiA+ID4gb25seSB0dXJucyB1cCBub3cuIEFueSBpZGVhcz8KPiA+Cj4gPiBBaCwgSSBzZWUuIFNv
IGJlZm9yZSB0aGUgb2ZmZW5kaW5nIHBhdGNoIHdlIHVzZWQgdG8ganVzdCBsZWF2ZSB0aGUKPiA+
IHB1bGwgc3RhdGUgYXQgd2hhdGV2ZXIgdGhlIGRlZmF1bHQgd2FzIHdoZW4gdGhlIGtlcm5lbCB3
YXMgYm9vdGVkLgo+ID4gQWZ0ZXIgdGhlIG9mZmVuZGluZyBwYXRjaCB3ZSBjaG9zZSBhIGRlZmF1
bHQuCj4gPgo+ID4gT24ga2V2aW4gSSBzZWUgYW4gZXh0ZXJuYWwgcHVsbCBkb3duIG9uIHRoaXMg
bGluZS4gRW5hYmxpbmcgYm90aCB0aGUKPiA+IGludGVybmFsIGFuZCBleHRlcm5hbCBpcyBwcm9i
YWJseSBub3QgYSBodWdlIGRlYWwsIGl0J2xsIGp1c3QgYWZmZWN0Cj4gPiB0aGUgc3RyZW5ndGgg
b2YgdGhlIHB1bGwuCj4gPgo+ID4gT24gYm9iIEkgX3RoaW5rXyB0aGUgZXh0ZXJuYWwgcHVsbCBk
b3duIGlzIGFsc28gc3R1ZmZlZC4KPiA+Cj4gPiAuLi5zbyBJIGd1ZXNzIHRoYXQgd291bGQgZXhw
bGFpbiB3aHkgaXQgZGlkbid0IGNhdXNlIGEgcHJvYmxlbSBmb3IgYXQKPiA+IGxlYXN0IHRob3Nl
IHR3byBib2FyZHM/Cj4gPgo+ID4gLURvdWcKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
