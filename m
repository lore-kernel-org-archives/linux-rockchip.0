Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0219BC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Feb 2022 10:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lCcJtuCtF1Gw02zlI+E0zNpOkJEFrnsDhLrMkh2CGY4=; b=wU6qHU56eVMlDX
	UsW6rHrSVd0eFCCBOWy90DhNaL9bWTJcp1Pqq9C+Dkb8jlXixjMFqy6RqrRX4QQOyQR81hyhP7LPe
	oZPRFW0kadycMc3z6aO542gh2+b0Y/PtbPsWCSNkUobhDgyspqAIgyQO75TlWz70CIH0ZA2l/q+X3
	kNUgjWkRko4LuPHFbZKdwASV8/OYqf9ABcLf1s4x4Fq2HIl1OaBaYxEDxD/YMOGM/Zjdw6gEmOpu4
	DTGXdw6ReGAZNZtNpkxxD9jVI2tWlqRh/C7F8uw9oOvMonxsrXir/Fnzo3cbCwcbnPehxj+IlG1o+
	BaoS0LaLnjk5V4m+U4Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nL07q-00DixR-Cz; Fri, 18 Feb 2022 10:04:30 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nL07c-00Ditn-Pm; Fri, 18 Feb 2022 10:04:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645178656; x=1676714656;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=stdZieqOPeTYM4fZPShDTH9sPVJsu1F9iRmFq4q1S1Y=;
 b=nGqHbdjkkiGxpL5ZR8h9uqSoX6UTWCt97YPElsB0u9EUNMtaLVx8Exao
 rdt+cUDyAVx9rW9cmQGQud+fjEJi4Ke7yBPyOuGZGCPeY8pU0SJNtM2FP
 QRvvKGOByIDceu4A3USB6K57c2wRCwH8xlpumf99Q5IQNXl0+yGpWJMEE
 N0p9dhcEMbaqHN1E9jVw149yFWfbR1UsJ0gdsMNQ7hRYLDUAtEXnMZzMo
 0NrypgAyYislqEfsuSfFZZpPWU69aS12a+bbbnEeVohjvy9hjU2B70IU8
 xPQUS9YI30aROE18haev3tywWDs9vBka8w+Peylcl79CVXmxmsoQ80Fwj g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="234628532"
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="234628532"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 02:04:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="682442318"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 18 Feb 2022 02:04:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Feb 2022 12:04:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Alain Volmat <alain.volmat@foss.st.com>,
 Alex Deucher <alexander.deucher@amd.com>, amd-gfx@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Aurabindo Pillai <aurabindo.pillai@amd.com>,
 Chen Feng <puck.chen@hisilicon.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Emma Anholt <emma@anholt.net>,
 freedreno@lists.freedesktop.org, Harry Wentland <harry.wentland@amd.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 John Stultz <john.stultz@linaro.org>, Jonas Karlman <jonas@kwiboo.se>,
 Jyri Sarha <jyri.sarha@iki.fi>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Leo Li <sunpeng.li@amd.com>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Nikola Cornij <nikola.cornij@amd.com>,
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Clark <robdclark@gmail.com>,
 Robert Foss <robert.foss@linaro.org>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 Sam Ravnborg <sam@ravnborg.org>, Sandy Huang <hjc@rock-chips.com>,
 Sean Paul <sean@poorly.run>, Thierry Reding <thierry.reding@gmail.com>,
 Tian Tao <tiantao6@hisilicon.com>, Tomi Valkeinen <tomba@kernel.org>,
 Xinliang Liu <xinliang.liu@linaro.org>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>
Subject: [PATCH 00/22] drm: Review of mode copies
Date: Fri, 18 Feb 2022 12:03:41 +0200
Message-Id: <20220218100403.7028-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220218_020416_937550_A3DCE8A9 
X-CRM114-Status: GOOD (  16.06  )
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkkg
bWlnaHQgYmUgdGFraW5nIHRoaXMgYSBiaXQgdG9vIGZhciwgYnV0IHRoZSBsYWNrIG9mCmNvbnNp
c3RlbmN5IGluIG91ciBtZXRob2RzIHRvIGNvcHkgZHJtX2Rpc3BsYXlfbW9kZQpzdHJ1Y3RzIGFy
b3VuZCBpcyBidWdnaW5nIG1lLgoKVGhlIG1haW4gd29ycnkgaXMgdGhlIGVtYmVkZGVkIGxpc3Qg
aGVhZCwgd2hpY2ggaWYKY2xvYmJlcmVkIGNvdWxkIGxlYWQgdG8gbGlzdCBjb3JydXB0aW9uLiBJ
J2QgYWxzbwpwcmVmZXIgdG8gbWFrZSBzdXJlIGV2ZW4gdGhlIHZhbGlkIGxpc3QgaGVhZHMgZG9u
J3QKcHJvcGFnYXRlIGJldHdlZW4gY29waWVzIHNpbmNlIHRoYXQgbWFrZXMgbm8gc2Vuc2UuCgpX
aGlsZSBnb2luZyB0aHJvdWdoIHNvbWUgb2YgdGhlIGNvZGUgSSBhbHNvIHNwb3R0ZWQKc29tZSB2
ZXJ5IHdlaXJkIG9uIHN0YWNrIGNvcGllcyBiZWluZyBtYWRlIGZvciBubwpyZWFzb24gYXQgYWxs
LiBJIGVsaW1pbmluYXRlZCBhIGZldyBvZiB0aGVtIGhlcmUsCmJ1dCB0aGVyZSBjb3VsZCBjZXJ0
YWlubHkgYmUgbW9yZSBsdXJraW5nIGluIHRoZQpzaGFkb3dzLgoKQ2M6IEFiaGluYXYgS3VtYXIg
PHF1aWNfYWJoaW5hdmtAcXVpY2luYy5jb20+CkNjOiBBbGFpbiBWb2xtYXQgPGFsYWluLnZvbG1h
dEBmb3NzLnN0LmNvbT4KQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNv
bT4KQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBBbmRyemVqIEhhamRhIDxh
bmRyemVqLmhhamRhQGludGVsLmNvbT4KQ2M6IEF1cmFiaW5kbyBQaWxsYWkgPGF1cmFiaW5kby5w
aWxsYWlAYW1kLmNvbT4KQ2M6IENoZW4gRmVuZyA8cHVjay5jaGVuQGhpc2lsaWNvbi5jb20+CkNj
OiBDaHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVAa2VybmVsLm9yZz4KQ2M6IEVtbWEgQW5ob2x0
IDxlbW1hQGFuaG9sdC5uZXQ+CkNjOiBmcmVlZHJlbm9AbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNj
OiBIYXJyeSBXZW50bGFuZCA8aGFycnkud2VudGxhbmRAYW1kLmNvbT4KQ2M6ICJIZWlrbyBTdMO8
Ym5lciIgPGhlaWtvQHNudGVjaC5kZT4KQ2M6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJl
Y0BnbWFpbC5jb20+CkNjOiBKb2huIFN0dWx0eiA8am9obi5zdHVsdHpAbGluYXJvLm9yZz4KQ2M6
IEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4KQ2M6IEp5cmkgU2FyaGEgPGp5cmkuc2Fy
aGFAaWtpLmZpPgpDYzogTGF1cmVudCBQaW5jaGFydCA8TGF1cmVudC5waW5jaGFydEBpZGVhc29u
Ym9hcmQuY29tPgpDYzogTGVvIExpIDxzdW5wZW5nLmxpQGFtZC5jb20+CkNjOiBsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LWFybS1tc21Admdlci5rZXJuZWwu
b3JnCkNjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBNYXhpbWUgUmlw
YXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+CkNjOiBOZWlsIEFybXN0cm9uZyA8bmFybXN0cm9uZ0Bi
YXlsaWJyZS5jb20+CkNjOiBOaWtvbGEgQ29ybmlqIDxuaWtvbGEuY29ybmlqQGFtZC5jb20+CkNj
OiBQYXRyaWsgSmFrb2Jzc29uIDxwYXRyaWsuci5qYWtvYnNzb25AZ21haWwuY29tPgpDYzogUGhp
bGlwcCBaYWJlbCA8cC56YWJlbEBwZW5ndXRyb25peC5kZT4KQ2M6IFJvYiBDbGFyayA8cm9iZGNs
YXJrQGdtYWlsLmNvbT4KQ2M6IFJvYmVydCBGb3NzIDxyb2JlcnQuZm9zc0BsaW5hcm8ub3JnPgpD
YzogUm9kcmlnbyBTaXF1ZWlyYSA8Um9kcmlnby5TaXF1ZWlyYUBhbWQuY29tPgpDYzogU2FtIFJh
dm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgpDYzogU2FuZHkgSHVhbmcgPGhqY0Byb2NrLWNoaXBz
LmNvbT4KQ2M6IFNlYW4gUGF1bCA8c2VhbkBwb29ybHkucnVuPgpDYzogVGhpZXJyeSBSZWRpbmcg
PHRoaWVycnkucmVkaW5nQGdtYWlsLmNvbT4KQ2M6IFRpYW4gVGFvIDx0aWFudGFvNkBoaXNpbGlj
b24uY29tPgpDYzogVG9taSBWYWxrZWluZW4gPHRvbWJhQGtlcm5lbC5vcmc+CkNjOiBYaW5saWFu
ZyBMaXUgPHhpbmxpYW5nLmxpdUBsaW5hcm8ub3JnPgpDYzogWGlud2VpIEtvbmcgPGtvbmcua29u
Z3hpbndlaUBoaXNpbGljb24uY29tPgoKVmlsbGUgU3lyasOkbMOkICgyMik6CiAgZHJtOiBBZGQg
ZHJtX21vZGVfaW5pdCgpCiAgZHJtL2FtZGdwdTogUmVtb3ZlIHBvaW50bGVzcyBvbiBzdGFjayBt
b2RlIGNvcGllcwogIGRybS9hbWRncHU6IFVzZSBkcm1fbW9kZV9pbml0KCkgZm9yIG9uLXN0YWNr
IG1vZGVzCiAgZHJtL2FtZGdwdTogVXNlIGRybV9tb2RlX2NvcHkoKQogIGRybS9yYWRlb246IFVz
ZSBkcm1fbW9kZV9jb3B5KCkKICBkcm0vYnJpZGdlOiBVc2UgZHJtX21vZGVfY29weSgpCiAgZHJt
L2dtYTUwMDogVXNlIGRybV9tb2RlX2NvcHkoKQogIGRybS9oaXNpbGljb246IFVzZSBkcm1fbW9k
ZV9pbml0KCkgZm9yIG9uLXN0YWNrIG1vZGVzCiAgZHJtL2lteDogVXNlIGRybV9tb2RlX2R1cGxp
Y2F0ZSgpCiAgZHJtL21zbTogTnVrZSB3ZWlyZCBvbiBzdGFjayBtb2RlIGNvcHkKICBkcm0vbXNt
OiBVc2UgZHJtX21vZGVfaW5pdCgpIGZvciBvbi1zdGFjayBtb2RlcwogIGRybS9tc206IFVzZSBk
cm1fbW9kZV9jb3B5KCkKICBkcm0vbXRrOiBVc2UgZHJtX21vZGVfaW5pdCgpIGZvciBvbi1zdGFj
ayBtb2RlcwogIGRybS9yb2NrY2hpcDogVXNlIGRybV9tb2RlX2NvcHkoKQogIGRybS9zdGk6IFVz
ZSBkcm1fbW9kZV9jb3B5KCkKICBkcm0vdGlsY2RjOiBVc2UgZHJtX21vZGVfY29weSgpCiAgZHJt
L3ZjNDogVXNlIGRybV9tb2RlX2NvcHkoKQogIGRybS9pOTE1OiBVc2UgZHJtX21vZGVfaW5pdCgp
IGZvciBvbi1zdGFjayBtb2RlcwogIGRybS9pOTE1OiBVc2UgZHJtX21vZGVfY29weSgpCiAgZHJt
L3BhbmVsOiBVc2UgZHJtX21vZGVfZHVwbGljYXRlKCkKICBkcm06IFVzZSBkcm1fbW9kZV9pbml0
KCkgZm9yIG9uLXN0YWNrIG1vZGVzCiAgZHJtOiBVc2UgZHJtX21vZGVfY29weSgpCgogLi4uL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY29ubmVjdG9ycy5jICAgIHwgIDQgKy0KIC4uLi9ncHUv
ZHJtL2FtZC9kaXNwbGF5L2FtZGdwdV9kbS9hbWRncHVfZG0uYyB8IDQxICsrKysrKysrKystLS0t
LS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbndsLWRzaS5jICAgICAgICAgICAgICB8ICAy
ICstCiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuYyAgICAgfCAgMiAr
LQogZHJpdmVycy9ncHUvZHJtL2JyaWRnZS90YzM1ODc2Ny5jICAgICAgICAgICAgIHwgIDIgKy0K
IGRyaXZlcnMvZ3B1L2RybS9kcm1fY3J0Y19oZWxwZXIuYyAgICAgICAgICAgICB8IDEyICsrKy0t
LQogZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMgICAgICAgICAgICAgICAgICAgIHwgIDggKysr
LQogZHJpdmVycy9ncHUvZHJtL2RybV9tb2Rlcy5jICAgICAgICAgICAgICAgICAgIHwgMjEgKysr
KysrKysrLQogZHJpdmVycy9ncHUvZHJtL2RybV92YmxhbmsuYyAgICAgICAgICAgICAgICAgIHwg
IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9nbWE1MDAvb2FrdHJhaWxfY3J0Yy5jICAgICAgICB8ICA4
ICstLS0KIGRyaXZlcnMvZ3B1L2RybS9oaXNpbGljb24va2lyaW4vZHdfZHJtX2RzaS5jICB8ICAy
ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAyMCAr
KysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pbXgvaW14LWxkYi5jICAgICAgICAgICAgICAgICB8
ICAzICstCiBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWkuYyAgICAgICAgICAgfCAg
MiArLQogLi4uL2RybS9tc20vZGlzcC9kcHUxL2RwdV9lbmNvZGVyX3BoeXNfY21kLmMgIHwgIDIg
Ky0KIC4uLi9kcm0vbXNtL2Rpc3AvZHB1MS9kcHVfZW5jb2Rlcl9waHlzX3ZpZC5jICB8ICA5ICsr
LS0KIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfZGlzcGxheS5jICAgICAgICAgICB8ICAyICst
CiBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2RybS5jICAgICAgICAgICAgICAgfCAxMCArKy0t
LQogZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLXRydWx5LW50MzU1OTcuYyAgIHwgIDMgKy0K
IC4uLi9ncHUvZHJtL3BhbmVsL3BhbmVsLXZpc2lvbm94LXJtNjkyOTkuYyAgICB8ICA0ICstCiBk
cml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9jb25uZWN0b3JzLmMgICAgfCAgNCArLQogZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMgICAgICAgIHwgIDIgKy0KIGRyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9pbm5vX2hkbWkuYyAgICAgICAgICB8ICAyICstCiBkcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvcmszMDY2X2hkbWkuYyAgICAgICAgfCAgMiArLQogZHJpdmVycy9n
cHUvZHJtL3N0aS9zdGlfZHZvLmMgICAgICAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1
L2RybS9zdGkvc3RpX2hkYS5jICAgICAgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9k
cm0vc3RpL3N0aV9oZG1pLmMgICAgICAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJt
L3RpbGNkYy90aWxjZGNfY3J0Yy5jICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS92
YzQvdmM0X2hkbWkuYyAgICAgICAgICAgICAgICB8ICA1ICstLQogaW5jbHVkZS9kcm0vZHJtX21v
ZGVzLmggICAgICAgICAgICAgICAgICAgICAgIHwgIDIgKwogMzAgZmlsZXMgY2hhbmdlZCwgMTA1
IGluc2VydGlvbnMoKyksIDc5IGRlbGV0aW9ucygtKQoKLS0gCjIuMzQuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
