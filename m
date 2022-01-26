Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25861C28CF5
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jan 2022 17:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YgHJ4dRCE5tabDODp5BiheTVmqErvUBt8YPUN2djhCY=; b=0u7FBpbs8ls7WO
	XC04rJS+Ys/F7k2z0hXR7BGCM4Xebtirq6ofoweuwzp6u+Mb6u8q3pYbrcL3BX7+1QWOkxfVtCU39
	MFqthCJ6wq7DcXdgUPggnVO2Kq60tepPBpr41kuhDYJDroMsbbtUyHzvjxg7u/W9hfX9qSCSYoEZi
	0gWPLzShOXwtCXOnN8mHosis5b9k0rd6coRcd9oa+kwtCXBnfJ21DVxVFCJXclkp405zQMYTTEgXB
	X+sECS5jjtIL5vnMYJ4/UY2uMINqwfkIwCIji81kCkJHbT4X3+wXF+Jt8xxJwXVpblBV8LxOy9m3C
	8g0vD5qIp3cieJS3KRkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nClkR-00CrsB-UA; Wed, 26 Jan 2022 17:06:19 +0000
Received: from mail-io1-xd2c.google.com ([2607:f8b0:4864:20::d2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCkdY-00CRiZ-C3
 for linux-rockchip@lists.infradead.org; Wed, 26 Jan 2022 15:55:13 +0000
Received: by mail-io1-xd2c.google.com with SMTP id c188so40719iof.6
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Jan 2022 07:55:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8N6pkwfXspakdaJZNWnP38Bamfx4gDdG3F4Wrj2z8a0=;
 b=R4PjleZoJRZEHoITMXop0eh4gJ/ykFxgKSZE/XIEndxWeSjox8Ho5Y5WSEwGWD5nwI
 9IYUDjyO/sH115RZ8zr4aaHKv4uwuJ6DuRjt//KHrKEHmkUBteL2Q1nGUdQFKi1z9vuI
 qG8pW5RzxHr7VPzE3Xb0fueZxlRwCDsn2SfCw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8N6pkwfXspakdaJZNWnP38Bamfx4gDdG3F4Wrj2z8a0=;
 b=yVcT8DXARKl2Jbbqd8ssSq+smHVAOSSsSP1wYEmLhk896N8YZ2CJEFscKAHBAtNMWc
 qwJ/z5HQXrHn+SDnQQo83s20YQfKnbCNqccajD53B7amAUI00WcOk1FxX4T0X4kevNfG
 EsOd8P/3YeT3yMbWDLuAnw8C2FeDU/09jub17UjyWMD4NbbhxuM/fHeI9kc0uIfzH77q
 E1cIHDo+YjC939HC66ELzv1RPSdjvaUndx6IPFkpXlVUYCAaJ299LAziDVJEKG9zjT+D
 v00kOc6INslvim1Ne1b1qr4/NX8ZhEl6O/sD3ZDbAx5AMQrmph2VRoxYeOCvHTXT6oSW
 KS0Q==
X-Gm-Message-State: AOAM531Jy78HSgkeSWg1nIVYcrwZNvCPk7fW1BvvTCalkqcwZk1NDkeG
 3YX1ptZTc9SwFurCDNYrRIKH+e3HFI4T3Q==
X-Google-Smtp-Source: ABdhPJxpRHxfK+qLScX4a42/U2fTGShW5S02zbl8bPLAOrgCaeH0LKisNCQ9+9/9jZFSvu3f7LRkgg==
X-Received: by 2002:a02:caa5:: with SMTP id e5mr8224600jap.159.1643212506916; 
 Wed, 26 Jan 2022 07:55:06 -0800 (PST)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com.
 [209.85.166.47])
 by smtp.gmail.com with ESMTPSA id z23sm3862335iol.11.2022.01.26.07.55.06
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 Jan 2022 07:55:06 -0800 (PST)
Received: by mail-io1-f47.google.com with SMTP id h7so62512iof.3
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Jan 2022 07:55:06 -0800 (PST)
X-Received: by 2002:a02:7a4f:: with SMTP id z15mr10410746jad.50.1643212505706; 
 Wed, 26 Jan 2022 07:55:05 -0800 (PST)
MIME-Version: 1.0
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-8-s.hauer@pengutronix.de>
In-Reply-To: <20220126145549.617165-8-s.hauer@pengutronix.de>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 26 Jan 2022 07:54:53 -0800
X-Gmail-Original-Message-ID: <CAD=FV=U7W_oWjS_gCurAkNdkcuHQGn-XH=-VwP2MSG9zO92ySg@mail.gmail.com>
Message-ID: <CAD=FV=U7W_oWjS_gCurAkNdkcuHQGn-XH=-VwP2MSG9zO92ySg@mail.gmail.com>
Subject: Re: [PATCH 07/27] drm/rockchip: dw_hdmi: Use auto-generated tables
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel <dri-devel@lists.freedesktop.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Peter Geis <pgwipeout@gmail.com>, Yakir Yang <ykk@rock-chips.com>, 
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_075508_484192_B095DC5F 
X-CRM114-Status: GOOD (  22.34  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGksCgpPbiBXZWQsIEphbiAyNiwgMjAyMiBhdCA2OjU4IEFNIFNhc2NoYSBIYXVlciA8cy5oYXVl
ckBwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4KPiBGcm9tOiBEb3VnbGFzIEFuZGVyc29uIDxkaWFu
ZGVycyBhdCBjaHJvbWl1bS5vcmc+Cj4KPiBUaGUgcHJldmlvdXMgdGFibGVzIGZvciBtcGxsX2Nm
ZyBhbmQgY3Vycl9jdHJsIHdlcmUgY3JlYXRlZCB1c2luZyB0aGUKPiAyMC1wYWdlcyBvZiBleGFt
cGxlIHNldHRpbmdzIHByb3ZpZGVkIGJ5IHRoZSBQSFkgdmVuZG9yLiAgVGhvc2UKPiBleGFtcGxl
IHNldHRpbmdzIHdlcmVuJ3QgcGFydGljdWxhcmx5IGRlbnNlLCBzbyB0aGVyZSB3ZXJlIHBsYWNl
cwo+IHdoZXJlIHdlIHdlcmUgZ3Vlc3Npbmcgd2hhdCB0aGUgc2V0dGluZ3Mgd291bGQgYmUgZm9y
IDEwLWJpdCBhbmQKPiAxMi1iaXQgKG5vdCB0aGF0IHdlIHVzZSB0aG9zZSBhbnl3YXkpLiAgSXQg
d2FzIGFsc28gYWx3YXlzIGEgbG90IG9mCj4gZXh0cmEgd29yayBldmVyeSB0aW1lIHdlIHdhbnRl
ZCB0byBhZGQgYSBuZXcgY2xvY2sgcmF0ZSBzaW5jZSB3ZSBoYWQKPiB0byBjcm9zcy1yZWZlcmVu
Y2Ugc2V2ZXJhbCB0YWJsZXMuCj4KPiBJbiA8aHR0cDovL2Nyb3NyZXZpZXcuY29tLzI4NTg1NT4g
SSd2ZSBnb25lIHRocm91Z2ggdGhlIHdvcmsgdG8gZmlndXJlCgpUaGUgYGNyb3NyZXZpZXcuY29t
YCBzeW50YXggZG9lc24ndCBzZWVtIHRvIHdvcmsgYW55bW9yZS4gQ291bGQgbWF5YmUKdXBkYXRl
IHRvIGh0dHBzOi8vY3JyZXYuY29tL2MvMjg1ODU1ID8KCj4gb3V0IGhvdyB0byBnZW5lcmF0ZSB0
aGlzIHRhYmxlIGF1dG9tYXRpY2FsbHkuICBMZXQncyBub3cgdXNlIHRoZQo+IGF1dG9tYXRpY2Fs
bHkgZ2VuZXJhdGVkIHRhYmxlIGFuZCB0aGVuIHdlJ2xsIG5ldmVyIG5lZWQgdG8gbG9vayBhdCBp
dAo+IGFnYWluLgo+Cj4gV2Ugb25seSBzdXBwb3J0IDgtYml0IG1vZGUgcmlnaHQgbm93IGFuZCBv
bmx5IHN1cHBvcnQgYSBzbWFsbCBudW1iZXIKPiBvZiBjbG9jayByYXRlcyBhbmQgYW5kIEkndmUg
dmVyaWZpZWQgdGhhdCB0aGUgb25seSA4LWJpdCByYXRlIHRoYXQgd2FzCj4gYWZmZWN0ZWQgd2Fz
IDE0OC41LiAgVGhhdCBtb2RlIGFwcGVhcnMgdG8gaGF2ZSBiZWVuIHdyb25nIGluIHRoZSBvbGQK
PiB0YWJsZS4KPgo+IENoYW5nZXMgc2luY2UgdjM6Cj4gLSBuZXcgcGF0Y2gKPgo+IFNpZ25lZC1v
ZmYtYnk6IERvdWdsYXMgQW5kZXJzb24gPGRpYW5kZXJzIGF0IGNocm9taXVtLm9yZz4KPiBTaWdu
ZWQtb2ZmLWJ5OiBZYWtpciBZYW5nIDx5a2sgYXQgcm9jay1jaGlwcy5jb20+CgpTaG91bGQgcHJv
YmFibHkgY2hhbmdlIHRoZSAiYXQiIHRvICJAIiA/Cgo+IFJldmlld2VkLWJ5OiBTdMOpcGhhbmUg
TWFyY2hlc2luIDxtYXJjaGV1IGF0IGNocm9taXVtLm9yZz4KCkluIGdlbmVyYWwgc2hvdWxkbid0
IGNhcnJ5IGRvd25zdHJlYW0gcmV2aWV3cyB3aGVuIHBvc3RpbmcgdXBzdHJlYW0KdW5sZXNzIHlv
dSdyZSBjZXJ0YWluIHRoYXQgdGhlIHBlcnNvbiBpbnRlbmRlZCBpdC4uLgoKCkl0J3MgYmVlbiBh
IGxvbmcgdGltZSwgYnV0IGluIGdlbmVyYWwgSSB0aGluayBJIHdhcyBmYWlybHkgY29uZmlkZW50
CmluIHRoZSBudW1iZXJzIHRoYXQgbXkgc2NyaXB0IHB1bXBlZCBvdXQsIGF0IGxlYXN0IGdpdmVu
IHRoZSBjYXZlYXQgb2YKbm8gcGl4ZWwgcmVwZXRpdGlvbiBhbmQgOC1iaXQgb25seS4gVGhhdCBi
ZWluZyBzYWlkLCBJIGRpZG4ndCBoYXZlIGFueQppbnNpZGUga25vd2xlZGdlIG9mIHRoZSBoYXJk
d2FyZSBhbmQganVzdCBmaWd1cmVkIG91dCBmb3JtdWxhcyB0aGF0CnNlZW1lZCB0byBtYXRjaCB0
aGUgdGFibGUgdGhhdCBJIGhhZC4gWU1NVi4KCkknbGwgYWxzbyBzYXkgdGhhdCB3aGVuIEkgZGlk
IGEgcmViYXNlIG9mIHZleXJvbiAocmszMjg4LWJhc2VkCkNocm9tZWJvb2spIHRvIDQuMTkgYWJv
dXQgMi41IHllYXJzIGFnbywgSSBlbmRlZCB1cCBzcXVhc2hpbmcgc2V2ZXJhbApvZiB0aGVzZSBw
YXRjaGVzIGludG8gMS4gVGhhdCBjYW4gYmUgZm91bmQgYXQKPGh0dHBzOi8vY3JyZXYuY29tL2Mv
MTY2MTA1Nj4uIFRoYXQgYWxzbyBoYXMgZGV0YWlscyBhYm91dCB3aHkgc29tZSBvZgp0aGVzZSBw
YXRjaGVzIG5ldmVyIG1hZGUgaXQgdXBzdHJlYW0uIFRoZSBtYWluIHJlYXNvbiwgYXQgbGVhc3Qg
aW4gdGhlCmNhc2Ugb2YgcmszMjg4LCB3YXMgdGhlIFBMTCBzaGFyaW5nIHByb2JsZW0gdGhhdCBu
b2JvZHkgZXZlciBzb2x2ZWQuCnJrMzI4OCBkaWRuJ3QgaGF2ZSBxdWl0ZSBlbm91Z2ggUExMcyBh
bmQgdGh1cywgaWYgeW91IHdlcmUgdXNpbmcgYm90aApWT1BzLCBvbmUgb2YgdGhlIFZPUHMgd2Fz
IGdvaW5nIHRvIGJlIHNldmVyZWx5IGxpbWl0ZWQgaW4gd2hhdCBwaXhlbApjbG9ja3MgaXQgY291
bGQgbWFrZS4gVGhlcmUgd2FzIG5vIGZyYW1ld29yayBkZWNpZGluZyB3aGljaCBWT1Agc2hvdWxk
CmJlIGxpbWl0ZWQgYW5kIGhvdyB0aGUgc3lzdGVtIHNob3VsZCByZWFjdCB0byB0aGlzLi4uCgoK
SW4gYW55IGNhc2UsIEknbSBwcmV0dHkgZmFyIGRpc2Nvbm5lY3RlZCBmcm9tIGFsbCB0aGlzIHN0
dWZmIG5vdywgYnV0Ckkgd2lzaCB5b3UgdGhlIGJlc3Qgb2YgbHVjayBpbiB0cnlpbmcgdG8gZ2V0
IGl0IGFsbCBzb2x2ZWQhCgotRG91ZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
