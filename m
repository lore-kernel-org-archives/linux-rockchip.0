Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 715C8606A887
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 20:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zItdgjEn;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=L+/347sM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=s+0+wnK0FZf2nerl9d9TWIR95PhsUZlG1AzBa0/zryw=; b=zItdgjEnBNxPOn6IyyyNf5omM9
	bP+bkT+3uLnH5UC4ggnYWDd74mWOkVAUL8Xmly98z6B3e+YfAaTT7kN3o3HzkS2DNFPMELMYMtwjJ
	YPuOogWXW96HDkECNPbKXCge3YL2RP0nGZjUXVm+YamQvatpKtepIrgueikJTIYyoi83/1OEhDl8F
	EcuDmqkkDh3hdKGJRFOLp8kdFc+G9mK0BUNyQbfeeJldxfbkL0qO+rHAJn8p8FLjNmosG4X8Haj0q
	j89CFi7bWtTbw0Orwx4fdLr6x5rHV5DaB5ehCfZIdyL+Wbl+433ojq0FWgnDwvsS+32diZimkXlJQ
	FTvsKSIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRy6c-0000000ET6W-0IMU;
	Fri, 13 Nov 2026 20:42:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRy6Z-0000000ET5U-3vdl;
	Fri, 13 Nov 2026 20:42:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=YAdamMR8GtstdFSlMhrRzbOBWBG4qIbe0wTjGGjDiwA=; b=L+/347sMtegLNHELLY7zT/q+Pm
	5TB2i1mEmMSSFoaCdgHLQxsIqVR6KvDa9xynuBb369HFBNfHLmT78nh8sY4m5mgTzR7fxEPydbq7z
	WaP3ADlq8anyST6nFH4pIL08mptZNcCI9c3+o6VbEXjgatNh8RTzh9Dkx8B9jOVp5NMG8HJQ+tWVn
	5yoDlXzESHbetaSid7t0LNPlpQ3ucb7gSsk6Z5ChMjnUj8+Xpwkl6F91x2IEnu23yzsZU1/szk63u
	tnVvx7WRGUOrYbIcA4t0g6nmP7y1ZOFAmLBMmhtkwxb/wHlE/+CpibnAAiYkLe6ObSOdjtKjXRc5l
	cIZMQ88A==;
From: Heiko Stuebner <heiko@sntech.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Sebastian Reichel <sre@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, kernel@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/4] arm64: dts: rockchip: Use DP AltMode defines
Date: Fri, 13 Nov 2026 21:42:34 +0100
Message-ID: <6TUX_NmlTWq-Z5zuCxQLsQ@sntech.de>
In-Reply-To: <20261017-dp-altmode-dt-defines-v2-2-7ab3d93553dd@collabora.com>
References: <20261017-dp-altmode-dt-defines-v2-0-7ab3d93553dd@collabora.com>
 <20261017-dp-altmode-dt-defines-v2-2-7ab3d93553dd@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_124239_995001_557FDB00 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gU2Ftc3RhZywgMTcuIE9rdG9iZXIgMjAyNiwgMjE6NTk6MzEgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBTZWJhc3RpYW4gUmVpY2hlbDoKPiBGcm9tOiBTZWJhc3RpYW4g
UmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPiAKPiBVc2UgdGhlIG5l
dyBVU0ItQyBEUCBBbHRNb2RlIGRlZmluZXMgZm9yIHRoZSBTVklEIGFuZCB0aGUgY2FwYWJpbGl0
aWVzCj4gVkRPIHRvIG1ha2UgdGhlIERUcyBtb3JlIHJlYWRhYmxlLiBUaGlzIGFsc28gZml4ZXMg
dXAgYW5ub3VuY2luZwo+IDB4ZmZmZmZmZmYsIHdoaWNoIGlzIHNpbXBseSB3cm9uZyBhcyB0aGF0
IGFsbG93cyB1c2luZyB0aGUgcG9ydCBpbgo+IHVwZmFjaW5nIG1vZGUgKGkuZS4gdGhlIGJvYXJk
IHJlY2VpdmluZyBEaXNwbGF5UG9ydCBkYXRhLCBiYW5kd2lkdGgKPiBhYm92ZSBIQlIzIG9yIHBp
biBjb25maWd1cmF0aW9ucyBub3QgaGFuZGxlZCBieSBVU0JEUC4KPiAKPiBSZXZpZXdlZC1ieTog
RG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBvc3MucXVhbGNvbW0uY29tPgo+IFNp
Z25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJv
cmEuY29tPgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1hbmJl
cm5pYy1yZy12aXRhLXByby5kdHMgfCA4ICsrKysrKy0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTc2LWFybXNvbS1jbTUtaW8uZHRzICAgICAgICB8IDggKysrKysrLS0KPiAg
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYtYXJtc29tLXNpZ2U1LmR0cyAgICAg
ICAgIHwgOCArKysrKystLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1y
b2NrLTViLTVicC01dC5kdHNpICAgICAgfCA4ICsrKysrKy0tCj4gIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4cy1pbmRpZWRyb2lkLW5vdmEuZHRzICAgICB8IDggKysrKysrLS0K
PiAgNSBmaWxlcyBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCgpS
ZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCkNvdWxkIGdvIHRv
Z2V0aGVyIHdpdGggdGhlIGJpbmRpbmcgY29udHN0YW50cyBvciB0aGVuIG9uZSByZWxlYXNlIGFm
dGVyCnBhdGNoMSBnZXRzIG1lcmdlZC4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
