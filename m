Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC55ACDE001
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 15:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z0C2htmk0Velzu//ZUKXyb07hCxYIOyFvf8SG3wMPEY=; b=lMeiAyTW/4XFDE
	/kUvFjsKWCkR18x6AlnrTK+ypTMVozn84MYy8xX0EAbLbZGhPlQZCtHgcx/nyDzjAr3t4vlOkot+o
	FRVtAQJEQROOqx8FBRRLrpDL69wZsUVdEzO7aHOzIec3le8Q7JbD9a8jV+p8Gw/5buHgxitFaW1kB
	Bpk8fGiBzNIXqmwJwXejTzykjai0SQUIKgxc3NFjSyIKppSncq94L71mH37pxPT47QzlKyqANR6qY
	FIIfW/rMV9Qb63ps80xcdwJ/FKH/kkGid6bfsID3GS0lX41uMCeO3RxepxenXhAae2nRraUugVbRW
	/xr70THB/wQYacGTMwXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcPbp-000000080VP-21nx;
	Wed, 24 Jun 2026 15:33:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcPbo-000000080Uu-2Ke7;
	Wed, 24 Jun 2026 15:33:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D4075600C3;
	Wed, 24 Jun 2026 15:33:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C223C1F000E9;
	Wed, 24 Jun 2026 15:33:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782315227;
	bh=5Pbkdg8CxGrTMdISG/ZeL9HyppC5k7WySbHQJhihs1k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=QEAC++bDkxXBzyfD0/mr/n1HZ2S13Hag15DhAJ/hyMSKw7BmgMcrwcFcCTk9819Vb
	 hjRtWTgLNr/P6SELq5uuvInkN0zP6+FsJ3Q8IxoQi7ZXa6Eirx/AM3F7rpELyemncC
	 tDbHAyyvFKSK+2MaeTku0RjIMYJWOV4AdqVHKtByRuXFlnpJ/20Iu0qNE9xqZwP0q4
	 XvyC8voJDUvzAuamRpNJ+m30SlCMnM3XuaDqNBPE+CR5ILR9ZuWi3cxwIdzaN/JlVv
	 nJD6JdjvhjueyHu2tarrM/GEDowe/Uaibh8CpMmY/17V+tbfFmiUOqJlrNsqfsg6gM
	 r11xiRoDyRzcA==
From: Mark Brown <broonie@kernel.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig_=28The_Capable_Hub=29?= <u.kleine-koenig@baylibre.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
 linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260624083708.254517-2-u.kleine-koenig@baylibre.com>
References: <20260624083708.254517-2-u.kleine-koenig@baylibre.com>
Subject: Re: [PATCH v1] ASoC: rockchip: rockchip_sai: #include
 <linux/platform_device.h> explicitly
Message-Id: <178230246570.43395.16324097796241355703.b4-ty@b4>
Date: Wed, 24 Jun 2026 13:01:05 +0100
MIME-Version: 1.0
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1191; i=broonie@kernel.org;
 h=from:subject:message-id; bh=T3HsoN1RXlYhnBv+yF4N9p1cXEDvlxe3CBqydtMEywQ=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBqO/jYR9G4KfjUX1bCR95i0ikgV8DhcjnBLMjAZ
 C1W3Zs/RVKJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCajv42AAKCRAk1otyXVSH
 0LP1B/wKWONCKZnjL0UA4GC5KKjXW6HczL7qEGMPO2bIM/NPtLNxJoVRS4Icg3FG6wtDp277l0K
 5+IWeJEvbWJuJuLn60UE6tGqqL6fXsF5l5G3si6lKcnzANwvA7x74GuJzJarvLwDmGpnCjrPC+c
 PKrFwIRBtqZwPhfiGE7ZzKTRnXG5ix2NKwyP7owKzI2iZeNOSyjTvhMSyL8UO8WdMgFkqEfxpAZ
 uKClMIdHTybEdrOxKu1QC/eAiaP/I+iig8SBpoAdlfvAne4e7ifImQyc35nVSdV+lf9BtEhc9nZ
 C5OmixPrzWWzsCOBQzYQKB2FBFsj7gLfA5njqKRT91AR4VoA
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
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

T24gV2VkLCAyNCBKdW4gMjAyNiAxMDozNzowNyArMDIwMCwgVXdlIEtsZWluZS1Lw7ZuaWcgKFRo
ZSBDYXBhYmxlIEh1Yikgd3JvdGU6Cj4gQVNvQzogcm9ja2NoaXA6IHJvY2tjaGlwX3NhaTogI2lu
Y2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPiBleHBsaWNpdGx5CgpBcHBsaWVkIHRvCgog
ICBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9icm9vbmll
L3NvdW5kLmdpdCBmb3ItNy4yCgpUaGFua3MhCgpbMS8xXSBBU29DOiByb2NrY2hpcDogcm9ja2No
aXBfc2FpOiAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+IGV4cGxpY2l0bHkKICAg
ICAgaHR0cHM6Ly9naXQua2VybmVsLm9yZy9icm9vbmllL3NvdW5kL2MvODNkNTNlY2E3ZTU1CgpB
bGwgYmVpbmcgd2VsbCB0aGlzIG1lYW5zIHRoYXQgaXQgd2lsbCBiZSBpbnRlZ3JhdGVkIGludG8g
dGhlIGxpbnV4LW5leHQKdHJlZSAodXN1YWxseSBzb21ldGltZSBpbiB0aGUgbmV4dCAyNCBob3Vy
cykgYW5kIHNlbnQgdG8gTGludXMgZHVyaW5nCnRoZSBuZXh0IG1lcmdlIHdpbmRvdyAob3Igc29v
bmVyIGlmIGl0IGlzIGEgYnVnIGZpeCksIGhvd2V2ZXIgaWYKcHJvYmxlbXMgYXJlIGRpc2NvdmVy
ZWQgdGhlbiB0aGUgcGF0Y2ggbWF5IGJlIGRyb3BwZWQgb3IgcmV2ZXJ0ZWQuCgpZb3UgbWF5IGdl
dCBmdXJ0aGVyIGUtbWFpbHMgcmVzdWx0aW5nIGZyb20gYXV0b21hdGVkIG9yIG1hbnVhbCB0ZXN0
aW5nCmFuZCByZXZpZXcgb2YgdGhlIHRyZWUsIHBsZWFzZSBlbmdhZ2Ugd2l0aCBwZW9wbGUgcmVw
b3J0aW5nIHByb2JsZW1zIGFuZApzZW5kIGZvbGxvd3VwIHBhdGNoZXMgYWRkcmVzc2luZyBhbnkg
aXNzdWVzIHRoYXQgYXJlIHJlcG9ydGVkIGlmIG5lZWRlZC4KCklmIGFueSB1cGRhdGVzIGFyZSBy
ZXF1aXJlZCBvciB5b3UgYXJlIHN1Ym1pdHRpbmcgZnVydGhlciBjaGFuZ2VzIHRoZXkKc2hvdWxk
IGJlIHNlbnQgYXMgaW5jcmVtZW50YWwgdXBkYXRlcyBhZ2FpbnN0IGN1cnJlbnQgZ2l0LCBleGlz
dGluZwpwYXRjaGVzIHdpbGwgbm90IGJlIHJlcGxhY2VkLgoKUGxlYXNlIGFkZCBhbnkgcmVsZXZh
bnQgbGlzdHMgYW5kIG1haW50YWluZXJzIHRvIHRoZSBDQ3Mgd2hlbiByZXBseWluZwp0byB0aGlz
IG1haWwuCgpUaGFua3MsCk1hcmsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
