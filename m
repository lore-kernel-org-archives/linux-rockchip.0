Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2575BE6E80F
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Feb 2026 11:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:Subject:From:
	To:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vKj5YpNZhsS0285c5ZlSSr8JudJ2+2PNlbPlJhScL8g=; b=UyNJ1NWxV7zwnM
	M9egMANq6ROiNeqpzUSHvR7tYnj0jz7e3ZqP2GPj3yE1DQu75SGsHSS0psXx3ug6vIBhUcmVlb2Wc
	0GgS4P4bOv6s36VyiRO1ISQbX9xGFZPXaXq7WQWZpxBNr1tmiGtmBmVad+S38S14AxvQqQvm8ggRD
	YWMTNOiiKFtm62mFq7S3dAXIdZjvPFClFCzePYDdxBBRNg6ffyp3e2ZH/iKEjIzCg8WH/6gBxjl0k
	MB78snlYKY8mbzs34tliiF7bp3Hi0ERf5r3NwuhBQ7hi/gAEUGzf5fI71IZU4UmLU28PPEpKpZ3J1
	kww7/SWrir/vQcNXtsTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnEKM-00000006WU0-0OPH;
	Tue, 03 Feb 2026 11:12:14 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnEKI-00000006WTF-2GOy
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Feb 2026 11:12:12 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 7CD581A2BBE;
	Tue,  3 Feb 2026 11:12:07 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 4351F60728;
	Tue,  3 Feb 2026 11:12:07 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 49DDD119A8888;
	Tue,  3 Feb 2026 12:11:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770117125; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=szFGRLlVCEwZRRovS/jad1iKZfVKQX8FqT/CwFCFTuw=;
	b=DPoX7rqxJKZUDYyaRDR7/S+6t9BTtJqy8WOm0KmHCdu7fbDoA48IJeL5CmMiKa5CyLOhPX
	1m04Tm1xnpB+4RqSBdn7YL51+pYU3mHNquNAHCkDuVG/s86TDceDYJ9NzVKwqMLOP+ckgr
	l5IyZPCe6xDcieA1XnO/XkU+hCgZUUoC71wA9QWyEwKGBoUn6jkxFv+oPWNTwgiVXpO+3X
	zROF2ReXs0saPeDrmiua4EgvrIFBe8Jc+tbqSIiRARGUc+JofQISJrkPs/wocHLOBMIBdh
	sPveengo3QMRO55rX/CBQjMu9HRt0XLeznsH2BnuNRYnSdvxUSFDSepExnD74A==
Mime-Version: 1.0
Date: Tue, 03 Feb 2026 12:11:53 +0100
Message-Id: <DG5A5BNULPQX.HRWTJLN9UQ2W@bootlin.com>
To: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 <andrzej.hajda@intel.com>, <neil.armstrong@linaro.org>, <rfoss@kernel.org>,
 "Damon Ding" <damon.ding@rock-chips.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v8 00/18] Apply drm_bridge_connector and panel_bridge
 helper for the Analogix DP driver
Cc: <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
 <jernej.skrabec@gmail.com>, <maarten.lankhorst@linux.intel.com>,
 <mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
 <simona@ffwll.ch>, <shawnguo@kernel.org>, <s.hauer@pengutronix.de>,
 <kernel@pengutronix.de>, <festevam@gmail.com>, <inki.dae@samsung.com>,
 <sw0312.kim@samsung.com>, <kyungmin.park@samsung.com>, <krzk@kernel.org>,
 <alim.akhtar@samsung.com>, <jingoohan1@gmail.com>,
 <p.zabel@pengutronix.de>, <hjc@rock-chips.com>, <andy.yan@rock-chips.com>,
 <dmitry.baryshkov@oss.qualcomm.com>, <dianders@chromium.org>,
 <m.szyprowski@samsung.com>, <jani.nikula@intel.com>,
 <linux-kernel@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <imx@lists.linux.dev>, <linux-arm-kernel@lists.infradead.org>,
 <linux-samsung-soc@vger.kernel.org>, <linux-rockchip@lists.infradead.org>
X-Mailer: aerc 0.20.1
References: <20251217093321.3108939-1-damon.ding@rock-chips.com>
 <6571983.R56niFO833@diego>
In-Reply-To: <6571983.R56niFO833@diego>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_031210_742469_AC36760F 
X-CRM114-Status: GOOD (  13.27  )
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

SGVsbG8gSGVpa28sIERhbW9uLAoKT24gTW9uIEphbiAxOSwgMjAyNiBhdCA1OjA2IFBNIENFVCwg
SGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkgRGFtb24sCj4KPiBBbSBNaXR0d29jaCwgMTcuIERl
emVtYmVyIDIwMjUsIDEwOjMzOjAzIE1pdHRlbGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJp
ZWIgRGFtb24gRGluZzoKPj4gUEFUQ0ggMSBpcyB0byBlbnN1cmUgdGhlIGxhc3QgYnJpZGdlIGRl
Y2xhcmVzIE9QX0VESUQgb3IgT1BfTU9ERVMgb3IgYm90aC4KPj4gUEFUQ0ggMiBpcyBhIHNtYWxs
IGZvcm1hdCBvcHRpbWl6YXRpb24gZm9yIHN0cnVjdCBhbmFsb2dpZF9kcF9kZXZpY2UuCj4+IFBB
VENIIDMgaXMgdG8gcGVyZm9ybSBtb2RlIHNldHRpbmcgaW4gJmRybV9icmlkZ2VfZnVuY3MuYXRv
bWljX2VuYWJsZS4KPj4gUEFUQ0ggNCBpcyB0byBhZGQgYSBuZXcgcGFyYW1ldGVyIHRvIHN0b3Jl
IHRoZSBwb2ludCBvZiBuZXh0IGJyaWRnZS4KPj4gUEFUQ0ggNSBpcyB0byBtYWtlIGxlZ2FjeSBi
cmlkZ2UgZHJpdmVyIG1vcmUgdW5pdmVyc2FsLgo+PiBQQVRDSCA2LTExIGFyZSBwcmVwYXJhdGlv
bnMgZm9yIGFwcGx5IGRybV9icmlkZ2VfY29ubmVjdG9yIGhlbHBlci4KPj4gUEFUQ0ggMTIgaXMg
dG8gYXBwbHkgdGhlIGRybV9icmlkZ2VfY29ubmVjdG9yIGhlbHBlci4KPj4gUEFUQ0ggMTMtMTUg
YXJlIHRvIG1vdmUgdGhlIHBhbmVsL2JyaWRnZSBwYXJzaW5nIHRvIHRoZSBBbmFsb2dpeCBzaWRl
Lgo+PiBQQVRDSCAxNiBpcyB0byBhdHRhY2ggdGhlIG5leHQgYnJpZGdlIG9uIEFuYWxvZ2l4IHNp
ZGUgdW5pZm9ybWx5Lgo+PiBQQVRDSCAxNy0xOCBhcmUgdG8gYXBwbHkgdGhlIHBhbmVsX2JyaWRn
ZSBoZWxwZXIuCj4KPiBPbiB0b3Agb2YgYWxsIHRoZSByZWNlbnQgYnJpZGdlLXJlbGF0ZWQgY29t
bWl0cywgdGhpcyBzZXJpZXMgc3RpbGwgd29ya3MKPiBvbiBteSByazM1ODgtZURQIGJvYXJkIC0g
d2hlbiB0aGUgZGlzcGxheSBpcyBwbHVnZ2VkIGluIG9uIGJvb3QuCj4KPiBBcyB0aGF0IGlzIHRo
ZSBjdXJyZW50IHN0YXRlIHdlIGFsc28gaGFkIGJlZm9yZSwgdGhpcyBzZXJpZXM6Cj4gVGVzdGVk
LWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiBvbiByazM1ODgKCkknbSBhcHBw
bHlpbmcgcGF0Y2hlcyAxLTMgYW5kIGdvdCBhIGNoZWNrcGF0Y2ggd2FybmluZyBmb3IgZWFjaCBw
YXRjaDoKCiAgV0FSTklORzogVW5leHBlY3RlZCBjb250ZW50IGFmdGVyIGVtYWlsOiAnSGVpa28g
U3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4gb24gcmszNTg4Jywgc2hvdWxkIGJlOiAnSGVpa28g
U3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4gKG9uIHJrMzU4OCknCgpJJ20gZml4aW5nIGl0IHdo
aWxlIGFwcGx5aW5nIHRob3NlIDMgcGF0Y2hlcy4KCkRhbW9uLCBjYW4geW91IGZpeCB0aGF0IGZv
ciB0aGUgcmVtYWluaW5nIHBhdGNoZXMgYmVmb3JlIHNlbmRpbmcgYSBuZXcKaXRlcmF0aW9uPwoK
THVjYQoKLS0KTHVjYSBDZXJlc29saSwgQm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVs
IGVuZ2luZWVyaW5nCmh0dHBzOi8vYm9vdGxpbi5jb20KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
