Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05B8EC83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 12:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OY+X6PljqaXR9DXNOfBDtBDGNYRKEXojUb1IDFsD/MA=; b=DQtnST4esO00D1
	GwD9P8n5Z27chRiSDnwTXP9tUeANZ8OhJ6ex8P/13xo0ZYil+FMywlWgAT+fqUguAksazf8SFl/JH
	uOoyUnykcs6NorwvcwSZBqaJl+WyvLIRGcP4RcJeMQID/RCtb9EAa6ncPJBE+Ew1H07LfchlIner3
	OyTSBtJL0SytZIFfH5WLv5C/73c3CUc5eNVI1PRtki30ht4zHWdNyeyItOvm6AL+alGCwzbftjSE4
	Pz2uxTZz5y+7iLe+w+j/6Fw9i+lfQ7ZhTjGqjIOgg0B0tMElRpptbSkRd5wWb2H91sN3hQXMaEZs8
	fcyGslbl86dRnDEtuWug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZqid-0000000BpBw-3vp7;
	Thu, 10 Jul 2025 12:49:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZpGX-0000000Bbp7-05rD;
	Thu, 10 Jul 2025 11:16:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Kgi11dZK94dq8u+jzWaaEo1iTl1oo581SiHl97QOATU=; b=hyIEnXbFeVAiaubFEW+EudR2QL
	EGJE/o6h3gS6JUHFZR3Mf8S5vi48x0m3Sf7Dt2MMo5ltxWJNW6iWfs3TP/fCzZESzKkGKZ3dbN2oQ
	S9yuw8lyN4Xb/TpuzKcBtpGdIhynxmzninz4hBbO1QZKe3jR4nmVPF5J7WFpcEvGsgnp/gTNxNv7y
	lgsSfvRdn1gd3LxtutYIgxAYEBGdLPIHa6cAgK4fngFNN2nCCOdous77NW5ojIPL/FwOrN2Ht7T9Z
	oyvzeSRmWdE5alqzDgWsIa7iEiUpJsD7CqQp46/sg/W6TNtwNy2T64Sj7dhG3EeoNCpQaQAdX49l1
	5uBHFEkw==;
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uZpGO-0004QB-JM; Thu, 10 Jul 2025 13:16:28 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Alexey Charkov <alchark@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH v6 1/7] thermal: rockchip: rename rk_tsadcv3_tshut_mode
Date: Thu, 10 Jul 2025 13:16:27 +0200
Message-ID: <7568508.DvuYhMxLoT@phil>
In-Reply-To: <20250610-rk3576-tsadc-upstream-v6-1-b6e9efbf1015@collabora.com>
References: <20250610-rk3576-tsadc-upstream-v6-0-b6e9efbf1015@collabora.com>
 <20250610-rk3576-tsadc-upstream-v6-1-b6e9efbf1015@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_041637_063419_53953564 
X-CRM114-Status: GOOD (  17.44  )
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRGllbnN0YWcsIDEwLiBKdW5pIDIwMjUsIDE0OjMyOjM3IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IFRoZSAidiIgdmVyc2lvbiBz
cGVjaWZpZXIgaGVyZSByZWZlcnMgdG8gdGhlIGhhcmR3YXJlIElQIHJldmlzaW9uLgo+IE1haW5s
aW5lIGRldmlhdGVkIGZyb20gZG93bnN0cmVhbSBoZXJlIGJ5IGNhbGxpbmcgdGhlIHY0IHJldmlz
aW9uIHYzIGFzCj4gaXQgZGlkbid0IHN1cHBvcnQgdGhlIHYzIGhhcmR3YXJlIHJldmlzaW9uIGF0
IGFsbC4KPiAKPiBUaGlzIGNyZWF0ZXMgbmVlZGxlc3MgY29uZnVzaW9uLCBzbyByZW5hbWUgaXQg
dG8gcmtfdHNhZGN2NF90c2h1dF9tb2RlCj4gdG8gYmUgY29uc2lzdGVudCB3aXRoIHdoYXQgdGhl
IGhhcmR3YXJlIHdhbnRzIHRvIGJlIGNhbGxlZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFz
IEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQt
Ynk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgpJIGNoZWNrZWQgdGhlIHZlbmRv
ci1rZXJuZWwsIGFuZCB5b3VyJ3JlIHJpZ2h0IHRoZQpydjExMjYgZ2V0cyBpZGVudGlmaWVkIGFz
IHYzIGl0IHNlZW1zLCB3aGlsZSBhbGwgb2YgcmszNXh4IGV4Y2VwdCByazM1NjgKKD0gcmszNTA2
LCByazM1MjgsIHJrMzU2MiwgcmszNTc2LCByazM1ODgpIGNhbGwgdGhlbXNlbGYgdjQKCgo+IC0t
LQo+ICBkcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jIHwgNCArKy0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMgYi9kcml2ZXJzL3RoZXJtYWwv
cm9ja2NoaXBfdGhlcm1hbC5jCj4gaW5kZXggYThhZDg1ZmViNjhmYmI3ZWM4ZDc5NjAyYjE2YzQ3
ODM4ZWNiM2MwMC4uNDBjN2QyMzRjM2VmOTlmNjlkZDhkYjRkOGM0N2Y5ZDQ5M2MwNTgzZCAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCj4gKysrIGIvZHJp
dmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYwo+IEBAIC0xMDQ1LDcgKzEwNDUsNyBAQCBz
dGF0aWMgdm9pZCBya190c2FkY3YyX3RzaHV0X21vZGUoaW50IGNobiwgdm9pZCBfX2lvbWVtICpy
ZWdzLAo+ICAJd3JpdGVsX3JlbGF4ZWQodmFsLCByZWdzICsgVFNBRENWMl9JTlRfRU4pOwo+ICB9
Cj4gIAo+IC1zdGF0aWMgdm9pZCBya190c2FkY3YzX3RzaHV0X21vZGUoaW50IGNobiwgdm9pZCBf
X2lvbWVtICpyZWdzLAo+ICtzdGF0aWMgdm9pZCBya190c2FkY3Y0X3RzaHV0X21vZGUoaW50IGNo
biwgdm9pZCBfX2lvbWVtICpyZWdzLAo+ICAJCQkJICBlbnVtIHRzaHV0X21vZGUgbW9kZSkKPiAg
ewo+ICAJdTMyIHZhbF9ncGlvLCB2YWxfY3J1Owo+IEBAIC0xMjk3LDcgKzEyOTcsNyBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IHJvY2tjaGlwX3RzYWRjX2NoaXAgcmszNTg4X3RzYWRjX2RhdGEgPSB7
Cj4gIAkuZ2V0X3RlbXAgPSBya190c2FkY3Y0X2dldF90ZW1wLAo+ICAJLnNldF9hbGFybV90ZW1w
ID0gcmtfdHNhZGN2M19hbGFybV90ZW1wLAo+ICAJLnNldF90c2h1dF90ZW1wID0gcmtfdHNhZGN2
M190c2h1dF90ZW1wLAo+IC0JLnNldF90c2h1dF9tb2RlID0gcmtfdHNhZGN2M190c2h1dF9tb2Rl
LAo+ICsJLnNldF90c2h1dF9tb2RlID0gcmtfdHNhZGN2NF90c2h1dF9tb2RlLAo+ICAJLnRhYmxl
ID0gewo+ICAJCS5pZCA9IHJrMzU4OF9jb2RlX3RhYmxlLAo+ICAJCS5sZW5ndGggPSBBUlJBWV9T
SVpFKHJrMzU4OF9jb2RlX3RhYmxlKSwKPiAKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
