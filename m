Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1425D1061B2B
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Mar 2026 01:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dHE5GZFawclstjgddbw1d3sTUrrlOH3bmsUSlQTVvwY=; b=smoL4dwauXohGn
	9dZ3WSp9C2THtlEGUWFWsYGl41bd3s8zCWPSdd3eEw8QD+0mqtkf62tvELz55KEQLSe5MyuNPInF1
	rnLurShOJss8priF6MykGACOHUyZAF/Ma5IbpK1q0jfjCJ/OXGSg63sMGWvhRzH0gaJKKop4qQEqT
	Nkf0D1FN1dosYLiVpQt7elc08CBEzVH1Ht6ZQRX+kcFJCcKIxbNZYxuPvslROS8Lw1z+w3sFgF8rA
	7zK96nk0vkXSE2TLCB0UMq3WKByoWoe7iCU/X7u1I/CqRoQdn9+oNN41LPHrFfWUvLcIKneMTJEli
	coI/BwD9n2xS5MOuVvSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7NmC-0000000C7uS-2Xos;
	Tue, 31 Mar 2026 01:20:16 +0000
Received: from smtpbg150.qq.com ([18.132.163.193])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7Nm9-0000000C7tR-2Y08
	for linux-rockchip@lists.infradead.org;
	Tue, 31 Mar 2026 01:20:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1774919919;
	bh=0owlCERj6gBEP9bncwJSFnotM1/dSDt0HIHcpsl1dUE=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=YVcT+QbwDdC00rcSr+a8kFqiqRzTPKYBuDu5NTUCiA0zUJoGruoFPCMAp7nanz8FY
	 sX1OTi6JrZqmq886kMVpQzSmDBzCFMplJJKVS7Vi1e9pCLWQZpU26W7rE7q4wY9+Z2
	 Rd7Ky1O0tUaP4OnM0vYb/57cUniHqGUJ3bsDXc74=
X-QQ-mid: zesmtpsz6t1774919917t48c7f87e
X-QQ-Originating-IP: 73VvFKCdPCWg6XgecUK7wdpE0n5+tLRhYX+nOTNzZcQ=
Received: from [172.16.12.51] ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 31 Mar 2026 09:18:33 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 10548730784965286243
Message-ID: <AFAEA46A791878B0+9fe68e46-8d8f-44f1-80e3-dfad2de51832@airkyi.com>
Date: Tue, 31 Mar 2026 09:18:32 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/10] Synopsys DisplayPort Controller improvements for
 Rockchip platforms
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Damon Ding <damon.ding@rock-chips.com>,
 Dmitry Baryshkov <lumag@kernel.org>, Alexey Charkov <alchark@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 kernel@collabora.com
References: <20260326-synopsys-dw-dp-improvements-v1-0-501849162290@collabora.com>
 <FE1BFB774BE13241+54b8a8ce-5a8c-495d-a53f-65a2440924fb@airkyi.com>
 <acphlgK6ZmBitGJL@venus>
Content-Language: en-US
From: Chaoyi Chen <kernel@airkyi.com>
In-Reply-To: <acphlgK6ZmBitGJL@venus>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: NUTz4BkILuKLAqpNKFPHbFLgq2niF47NiSVqRtUS4oK4g8ZpaJ2hN2CN
	WdbHwkUTBDaLWG+RrW97tXB1Q2epQPyoq/A6Dx2McVtnlu/bimEHZwBAPBL0NVR8YAlWpKR
	Ma9nt0JW7MNnNwI7vIaqhK2W5xKlCK1z4FlsuIafWDGmYo0V+7QVui+3atfq9K/o53YxaUJ
	B9nkNArZaEndwSldx6qADtXedmiqK/1UMJ2l2SmkPA0NPXEg7AB/SxHeqIaQcsjqM+aw6g8
	mzGpsCEgix492U8c20dJJ/8INbx4TpDw9872I6F+D6sP9y8sK3v5tsC6w4EEwzwgff2xgB/
	uexNoKpAMVHhpxnitOgTzHdnItKty3aa5LJy/nuIi8wslyxM+CTJk2r7zboT6lX1PIxidq9
	Lv3fYqVWOAzNaisAYxV3WYxaHISXaCgg+QgACx7gAftHqYDmz/Ja46XPl/Qt6D1rylGecmL
	/cg1dcIUTHRQAbA4zqFkh2Xte18RoTu3iTjUIHVsunBs6wOTWEPdu49Bmr2zjAmVm8pSGup
	uPUoIPsY2lXChb5S0kS0RW0KmXxoP8++ODFLZg0rWiGqP7NIygxJgNZterSmLbKUNNyb91j
	vjmorO59eeJ4WVDeYgUMEJ3hn4Ehkjnfb3OhyAwbUvssbSXO3EvIvGkQ4t+pHfzMGxIsZ1n
	LdbDRSj8NlXwcgD77Fw+O8PST27qqr/4CWeppTtkKEd1/U64lQ8OER0CoJmmbDbOTxHRXae
	rEThcjqr2zJa1byry3j4fZ0SR4J1yHPELJOp9LnFJ/6Z8lq7YLdUeLkMN1wHja8DtNchpMW
	jbgO5TzTEluG0QgAjvqqVbPhlbnDkqNdxCiSqHCoCnTdsTszRsMTk/JWu81ITGmM1L1S+aj
	enOG14vrCM4mbQ4QKEnAUILavz0EPZe3G0dJmfTdH7k34I9rpVMXyklevCXqs79JZI88M0p
	tQ4IoPJ2FRYD1A+mYVk6Z4H1+ufLJ6sc99qmAXQthT68RT8C4U2Vtkje4
X-QQ-XMRINFO: NyFYKkN4Ny6FuXrnB5Ye7Aabb3ujjtK+gg==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_182014_165250_7AD0926D 
X-CRM114-Status: GOOD (  14.59  )
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

SGVsbG8gU2ViYXN0aWFuLAoKT24gMy8zMC8yMDI2IDc6NTAgUE0sIFNlYmFzdGlhbiBSZWljaGVs
IHdyb3RlOgo+IEhlbGxvIENoYW95aSwKPiAKPiBPbiBNb24sIE1hciAzMCwgMjAyNiBhdCAwOToz
NDoxNUFNICswODAwLCBDaGFveWkgQ2hlbiB3cm90ZToKPj4+IFRoZXJlIGFyZSB0d28gcGFydHMs
IHdoaWNoIHBvc3NpYmx5IG5lZWQgc29tZSBkaXNjdXNzaW9uOgo+Pj4KPj4+ICAxLiBJIGFkZGVk
IGEgZGVkaWNhdGVkIGJyaWRnZSBjYWxsYmFjayBmb3Igb3V0LW9mLWJhbmQgaG90cGx1ZyBldmVu
dHMsCj4+PiAgICAgd2hpY2ggaXMgc2VwYXJhdGUgZnJvbSB0aGUgaG90cGx1Z19ub3RpZnkuIEkg
aGF2ZSBhIGZlZWxpbmcsIHRoYXQKPj4+ICAgICB0aGVyZSBtaWdodCBiZSBhIGJldHRlciBzb2x1
dGlvbiwgYnV0IGhhdmVuJ3QgZm91bmQgaXQuCj4+Cj4+IENvdWxkIHlvdSBleHBsYWluIHdoYXQg
YW4gb3V0LW9mLWJhbmQgaG90cGx1ZyBldmVudCBpcz8KPj4KPj4gQ2FuJ3QgdGhlIGRyaXZlcnMv
dXNiL3R5cGVjL2FsdG1vZGVzL2Rpc3BsYXlwb3J0LmMgcmVzcG9uZCB0byB0aGVzZQo+PiBob3Qt
cGx1ZyBldmVudHM/IFRoYW5rIHlvdS4KPiAKPiBUaGF0IGlzIHdoYXQgZ2VuZXJhdGVzIHRoZSBv
dXQtb2YtYmFuZCBob3RwbHVnIGV2ZW50IGluIHRoZSBmaXJzdAo+IHBsYWNlIHZpYSBkcm1fY29u
bmVjdG9yX29vYl9ob3RwbHVnX2V2ZW50KCkuIFRoZSBvb2IgaW4gdGhhdCBjYWxsCj4gbWVhbnMg
b3V0IG9mIGJhbmQuCj4gCj4gSWYgeW91IGxvb2sgYXQgdGhhdCBmdW5jdGlvbiBpdCBjYWxscyBv
b2JfaG90cGx1Z19ldmVudCgpIGNhbGxiYWNrCj4gb24gdGhlIERSTSBjb25uZWN0b3IsIHdoaWNo
IGlzIHRoZW4gaW1wbGVtZW50ZWQgYnkKPiBkcm1fYnJpZGdlX2Nvbm5lY3Rvcl9vb2JfaG90cGx1
Z19ldmVudCgpLiBUaGlzIGZ1bmN0aW9uIGNhbGxzIHVzZXMKPiB0aGUgbm9ybWFsIGhwZCBoYW5k
bGluZyAoc2hhcmVkIGJ5IGluLWJhbmQgYW5kIG91dC1vZi1iYW5kKSBhbmQgSSdtCj4gcGF0Y2hp
bmcgaXQsIHNvIHRoYXQgdGhlIGJyaWRnZXMgYXJlIGF3YXJlIG9mIGhwZCBleHBsaWNpdGx5IGJl
aW5nCj4gcHJvdmlkZWQgb3V0LW9mLWJhbmQuCj4gCgpBaCwgSSdtIGFjdHVhbGx5IG1vcmUgY29u
Y2VybmVkIHdpdGggdGhlIHNwZWNpZmljIHR5cGVzIG9mIGV2ZW50cy4KRm9yIGV4YW1wbGUsIHRo
ZSAiZXhwbGljaXRseSIgcHJvdmlkZWQgSFBEIHlvdSBtZW50aW9uZWQgaGVyZS4gCklzbid0IGRy
bV9jb25uZWN0b3Jfb29iX2hvdHBsdWdfZXZlbnQgYWJsZSB0byBwcm92aWRlIHRob3NlPwoKSSBh
c3N1bWUgeW914oCZcmUgbG9va2luZyBmb3IgYW4gb29iIGV2ZW50IHRoYXQgaXMgcHJvcGFnYXRl
ZCBhbG9uZyB0aGUKYnJpZGdlIGNoYWluLCByYXRoZXIgdGhhbiBhdCB0aGUgY29ubmVjdG9yLiBJ
cyB0aGF0IHNvPyBUaGFuayB5b3UuCgo+IEdyZWV0aW5ncywKPiAKPiAtLSBTZWJhc3RpYW4KCi0t
IApCZXN0LCAKQ2hhb3lpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
