Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E5E5ECAAA3
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Aug 2022 12:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3XzO2EuKrWd1jJfYJ1gKNe+z98bzMXyxgPlsp8xI6M=; b=YHmpMQuxJdnu7o
	tnJUWFvb/T3Q9zXduN9Zo31IXGo/lxsn6doOzv8cDKQ76mF4Boy48/1K+bDhqG35rVeB9eqkkdW6J
	Fr3DnkaFmMIApuF9iFFIOQy/VLKzrJ1MT+G30ndyAz8pv94c9fjE6uFXjj/rJHVfOBCpghuvVzrCN
	9rQ7P1FAuWgpOnETKzRP4SwTiA6Zbxqojx725KdPKH2eRgWd+S7BAU9yuN3elPMMJafyhzoRK9vDU
	erXUtdkeEXIcnsmrTG7Mu/SXjif0N4P4Bqblp8mfE2+14sqK9U3Qn1bOcFdNfPptt2/2RNWiBu2Oe
	JuhqV6Zhylaai1nDDzCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRY4A-002KSj-RH; Fri, 26 Aug 2022 12:04:02 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRY46-002KLm-Um
	for linux-rockchip@lists.infradead.org; Fri, 26 Aug 2022 12:04:01 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-334dc616f86so30209567b3.8
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Aug 2022 05:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=friendlyarm-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=nMtNIpyaxV6n6y1j4kQGb3c6ARKMgnzuDhHNiwEVBA4=;
        b=NDXiZwcPZjtmeIncwlMtPlhsL6rDiS/IDxaxVsoPMFZbAprw6sE4IhTH1pd7ZBiU8n
         Lz+K/SwbUm2CzgbeGFBJ4zLa/SMhAKc70eTfAi9+XBUGZ3DIkJUrmn6yMll46vjB0C6v
         vvp14qIMvKqsiLCGAfO4mGTHJqQOk8t9A+Sdg1RFmsPnJKfYd/L20bU5Q3mTb/sWqyeD
         VnY2tjHPxu7AntPtHTerHp2KDD6id6NEpy6yuKLhuiY+GHebX1xP6F5ripEBeRvOPnf0
         a5Zg2dgJPOPSdBlPgKXMZN60iV52WsjLYLX/F7C2pwCxIPfe75Ff2khcY/rmRoTeLgbM
         +Q+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=nMtNIpyaxV6n6y1j4kQGb3c6ARKMgnzuDhHNiwEVBA4=;
        b=gQm+Hqi8Vt4jPozDBRkibldWqPY843PS666tkxYWm6tLsegCZVpHUzVlwB9u7wBDqT
         OL6djXT3gnlJa6gp9IMQSgqZJ7yWC63xQkl8BKAaMLvZ6IpqBTWReKDeigFnDGunq4Lj
         kRNIkWW96qU4gLmD4kykCAhwKMn+72CUzs7/QmXvgtZFjD0k8MuwXVbTpkYm+IW8tvBn
         KXl6OThoe07Jx83mbAFJDhd4Rhv55OqbRlGoOsmvvwJ33QX70l+Ngnq9cpqbsLnz+UAQ
         nm7SHh1XE8ub/srYx3vJplJb2XchQk3UFBX0Dpx3dOUPVHVIizdPzmtm+QYyknzIbrWu
         XOpw==
X-Gm-Message-State: ACgBeo0sfF4AFXGv+SWYeIe+E0xWCcli1kfASFZPOkO85+hnMZogS4SC
	RXUV8/UwlX+h8TZZaJKmXNpFxK6Ij2gFpLnxPPNuaCNthyJRJ7h3
X-Google-Smtp-Source: AA6agR6GAz4sMztYMnrEfA1yl8CfSLqn+NtlwlcSGb20UhZtyE2nH6eK1+0G+qYfDcSJubGiroR8mCp+hNugAhCXgrI=
X-Received: by 2002:a0d:ea90:0:b0:33d:faad:db54 with SMTP id
 t138-20020a0dea90000000b0033dfaaddb54mr2214939ywe.116.1661515434826; Fri, 26
 Aug 2022 05:03:54 -0700 (PDT)
MIME-Version: 1.0
References: <20220822074139.3810-1-jensenhuang@friendlyarm.com>
 <23552842.6Emhk5qWAg@diego> <CAD=FV=W-ajJDfYcP3P8Jyk_KgsUAbdTtmwiNXqJ=Ab2ojgrUGw@mail.gmail.com>
 <CAMpZ1qEe7xFr+XaXsS_hWDLnGGA8PfzQiToOjY1N_1ctyQ+KxA@mail.gmail.com> <CAD=FV=U-=2GpQTb0N1p3Qe2TAb=JhyZJw2V8T-qbLs5TYhW7qA@mail.gmail.com>
In-Reply-To: <CAD=FV=U-=2GpQTb0N1p3Qe2TAb=JhyZJw2V8T-qbLs5TYhW7qA@mail.gmail.com>
From: Jensen Huang <jensenhuang@friendlyarm.com>
Date: Fri, 26 Aug 2022 20:03:43 +0800
Message-ID: <CAMpZ1qGya8zr-QJZHY4OqEg0NLo_db6ttnf6Ai2NHdUL1+6qBw@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20220826_050359_267882_4374D579 
X-CRM114-Status: GOOD (  31.50  )
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

SGksCgpUaGFua3MhCkkgdW5kZXJzdGFuZCB0aGF0IHRoaXMgcGF0Y2ggZG9lcyBwb3RlbnRpYWxs
eSBhZmZlY3QgYm9hcmRzIHdpdGgKZXh0ZXJuYWwgcHVsbCBkb3duLgpUbyBhdm9pZCB0aGlzLCBJ
IHdpbGwgbW92ZSBgZW5hYmxlLXN0cm9iZS1wdWxsZG93bmAgdG8KcmszMzk5LW5hbm9waTQuZHRz
aSBhbmQgc2VuZCBwYXRjaCB2Mi4KCgpCUiwKSmVuc2VuCgpPbiBXZWQsIEF1ZyAyNCwgMjAyMiBh
dCAxMDo1OCBQTSBEb3VnIEFuZGVyc29uIDxkaWFuZGVyc0BjaHJvbWl1bS5vcmc+IHdyb3RlOgo+
Cj4gSGksCj4KPiBPbiBUdWUsIEF1ZyAyMywgMjAyMiBhdCA4OjExIFBNIEplbnNlbiBIdWFuZwo+
IDxqZW5zZW5odWFuZ0BmcmllbmRseWFybS5jb20+IHdyb3RlOgo+ID4KPiA+IEhpLAo+ID4KPiA+
IFNvcnJ5IGZvciBzZW5kaW5nIGFuIGVtYWlsIGluIEhUTUwgZm9ybWF0Lgo+ID4KPiA+IEkgcmVh
bGl6ZWQgdGhhdCBvbmx5IHNvbWUgZGV2aWNlcyBtYXkgYmUgYWZmZWN0ZWQsIHNvIEkgY29uc2lk
ZXJlZAo+ID4gbW9kaWZ5aW5nIHJrMzM5OS1uYW5vcGk0LmR0c2kgb25seSwKPiA+IGJ1dCBvdGhl
ciBib2FyZHMgd2l0aG91dCBleHRlcm5hbCBwdWxsLWRvd24gc2hvdWxkIHN0aWxsIG5lZWQgdGhp
cyBwYXRjaC4KPgo+IEkgZ3Vlc3MgdGhlIG90aGVyIGFsdGVybmF0aXZlIHdvdWxkIGJlIHRvIGNo
YW5nZSBob3cgdGhlIGR0IHByb3BlcnR5Cj4gd29ya3MuIFlvdSBjb3VsZCBzYXk6Cj4KPiAxLiBJ
ZiBgZW5hYmxlLXN0cm9iZS1wdWxsZG93bmAgaXMgc2V0IHRoZW4gZW5hYmxlIHRoZSBzdHJvYmUg
cHVsbGRvd24uCj4KPiAyLiBJZiBgZW5hYmxlLXN0cm9iZS1wdWxsZG93bmAgaXMgbm90IHNldCB0
aGVuIGRvbid0IHRvdWNoIHRoZSBwaW4gaW4KPiB0aGUga2VybmVsLgo+Cj4gMy4gSWYgc29tZW9u
ZSBsYXRlciBuZWVkcyB0byBleHBsaWNpdGx5IGRpc2FibGUgdGhlIHN0cm9iZSBwdWxsZG93bgo+
IHRoZXkgY291bGQgYWRkIGEgbmV3IHByb3BlcnR5IGxpa2UgYGRpc2FibGUtc3Ryb2JlLXB1bGxk
b3duYC4KPgo+Cj4gT2J2aW91c2x5IHRoZXJlIGFyZSB0cmFkZW9mZnMgYmV0d2VlbiB0aGF0IGFu
ZCB3aGF0IHlvdSd2ZSBkb25lIGFuZAo+IEknbSBoYXBweSB0byBsZXQgb3RoZXJzIG1ha2UgdGhl
IGNhbGwgb2Ygd2hpY2ggdGhleSdkIHByZWZlci4KPgo+Cj4gPiBCUiwKPiA+IEplbnNlbgo+ID4K
PiA+IE9uIFR1ZSwgQXVnIDIzLCAyMDIyIGF0IDEwOjEzIFBNIERvdWcgQW5kZXJzb24gPGRpYW5k
ZXJzQGNocm9taXVtLm9yZz4gd3JvdGU6Cj4gPiA+Cj4gPiA+IEhpLAo+ID4gPgo+ID4gPiBPbiBU
dWUsIEF1ZyAyMywgMjAyMiBhdCA0OjUzIEFNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRlY2gu
ZGU+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gQW0gTW9udGFnLCAyMi4gQXVndXN0IDIwMjIsIDA5
OjQxOjM5IENFU1Qgc2NocmllYiBKZW5zZW4gSHVhbmc6Cj4gPiA+ID4gPiBJbnRlcm5hbCBwdWxs
LWRvd24gZm9yIHN0cm9iZSBsaW5lIChHUkZfRU1NQ1BIWV9DT04yWzldKSB3YXMgZGlzYWJsZWQK
PiA+ID4gPiA+IGJ5IGNvbW1pdCA4YjVjMmI0NWI4ZjAsIHdoaWNoIGNhdXNlcyBJL08gZXJyb3Ig
aW4gSFM0MDAgbW9kZS4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBUZXN0ZWQgb24gTmFub1BDLVQ0Lgo+
ID4gPiA+ID4KPiA+ID4gPiA+IEZpeGVzOiA4YjVjMmI0NWI4ZjAgKCJwaHk6IHJvY2tjaGlwOiBz
ZXQgcHVsbGRvd24gZm9yIHN0cm9iZSBsaW5lIGluIGR0cyIpCj4gPiA+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBKZW5zZW4gSHVhbmcgPGplbnNlbmh1YW5nQGZyaWVuZGx5YXJtLmNvbT4KPiA+ID4gPgo+
ID4gPiA+IG9rLCBzbyB0aGlzIGxvb2tzIGxpa2UgaXQgcmVzdG9yZXMgcHJldmlvdXMgZnVuY3Rp
b25hbGl0eS4KPiA+ID4gPgo+ID4gPiA+IEknbSBqdXN0IHdvbmRlcmluZyBhcyB0aGUgIm9mZmVu
ZGluZyIgcGF0Y2ggaXMgZnJvbSAyMDIwLCB3aHkgdGhpcwo+ID4gPiA+IG9ubHkgdHVybnMgdXAg
bm93LiBBbnkgaWRlYXM/Cj4gPiA+Cj4gPiA+IEFoLCBJIHNlZS4gU28gYmVmb3JlIHRoZSBvZmZl
bmRpbmcgcGF0Y2ggd2UgdXNlZCB0byBqdXN0IGxlYXZlIHRoZQo+ID4gPiBwdWxsIHN0YXRlIGF0
IHdoYXRldmVyIHRoZSBkZWZhdWx0IHdhcyB3aGVuIHRoZSBrZXJuZWwgd2FzIGJvb3RlZC4KPiA+
ID4gQWZ0ZXIgdGhlIG9mZmVuZGluZyBwYXRjaCB3ZSBjaG9zZSBhIGRlZmF1bHQuCj4gPiA+Cj4g
PiA+IE9uIGtldmluIEkgc2VlIGFuIGV4dGVybmFsIHB1bGwgZG93biBvbiB0aGlzIGxpbmUuIEVu
YWJsaW5nIGJvdGggdGhlCj4gPiA+IGludGVybmFsIGFuZCBleHRlcm5hbCBpcyBwcm9iYWJseSBu
b3QgYSBodWdlIGRlYWwsIGl0J2xsIGp1c3QgYWZmZWN0Cj4gPiA+IHRoZSBzdHJlbmd0aCBvZiB0
aGUgcHVsbC4KPiA+ID4KPiA+ID4gT24gYm9iIEkgX3RoaW5rXyB0aGUgZXh0ZXJuYWwgcHVsbCBk
b3duIGlzIGFsc28gc3R1ZmZlZC4KPiA+ID4KPiA+ID4gLi4uc28gSSBndWVzcyB0aGF0IHdvdWxk
IGV4cGxhaW4gd2h5IGl0IGRpZG4ndCBjYXVzZSBhIHByb2JsZW0gZm9yIGF0Cj4gPiA+IGxlYXN0
IHRob3NlIHR3byBib2FyZHM/Cj4gPiA+Cj4gPiA+IC1Eb3VnCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
