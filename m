Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C255C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Feb 2022 17:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zt8PMLkHN9rQX0Odp+x9IFBPZchjofwrIDGsW/+HJpU=; b=Px/r7XST6IzUzq
	ZSfNfMqjF8vYJ7djHGg8BZZtbO0/4AtZ/fGsfjMPKusK3o2Ap8Mj+qVyrbt/Rz9QGnJjd+ZjCO6Jz
	Uh8tpJ5i5nU5Z/ZxIpv4vAnyfE75jH38a4Yvy2Fh+5IpzeMaz4gMZmsxKd7RfTwUWe9gB6WTtDazj
	1k8NlxaayYJgoIWx0isWRueTknZ5rPSOO2WirjsBZRi9mmO1dGbzWmKbe+7jQcvoTejrOA+9NBaP8
	VH/CUlvR469NnM3wkiknfkGC+1YVx8Daljo6eMlXhYyp773MK+TdBFgAmdfaSIu6jGcvBO/8KhnEo
	YsSbeBHvQtpHFmHj0QwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKk9b-00BWme-Er; Thu, 17 Feb 2022 17:01:15 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKk9M-00BWj5-Iy; Thu, 17 Feb 2022 17:01:02 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dmitry.osipenko) with ESMTPSA id A6F431F46171
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1645117258;
 bh=ff3TSiMV7RvAbS0hNd/AGstmXBT++vNiyhhx50+xrd8=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=dBdEbVdp2EEfpi/vkF5YuEEUhxfieguPC+aO0KJIceXvBmWhA4SPcAdagW1ZAQz1H
 xE6PRIb1Fq2LB4lvWqaF5kQti083FrfgjZsN6EgfyHbZqKoylouXB6RZdrUgPU7vRX
 NCWZ1VP4+ZkMG/1VZC1W0Tqge1pfUomwOoLsmYgCpWbQgRL69zL2jlucUzRKvF3cts
 xuuW80kMPuliMf04HN+qIuaKU8cTT8DS3o37OM1gvPzDuGm9GxIcJkGi7OKldabNPc
 0qZFmCCDMJ+vA1mtStR9RdXedEbUJRBTvH8iVjiMV40d3ZyQPm4xwy9U1TGxt6s0U0
 m1lV+rXcuBNpw==
Message-ID: <0c6bd002-dbb3-aa44-9508-974c3ebda778@collabora.com>
Date: Thu, 17 Feb 2022 20:00:54 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v6 13/23] drm/rockchip: dw_hdmi: Set cur_ctr to 0 always
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Yakir Yang <ykk@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-14-s.hauer@pengutronix.de>
 <f5abe6aa-473a-a00d-2bc5-b8a1d0560d1f@collabora.com>
 <20220217151259.GT18637@pengutronix.de>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220217151259.GT18637@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_090100_780594_110B0AA9 
X-CRM114-Status: GOOD (  14.15  )
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

CgoxNy4wMi4yMDIyIDE4OjEyLCBTYXNjaGEgSGF1ZXIg0L/QuNGI0LXRgjoKPiBPbiBUaHUsIEZl
YiAxNywgMjAyMiBhdCAwNTowMDozN1BNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+
IDE3LjAyLjIwMjIgMTE6MjksIFNhc2NoYSBIYXVlciDQv9C40YjQtdGCOgo+Pj4gRnJvbTogRG91
Z2xhcyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgo+Pj4KPj4+IEppdHRlciB3YXMg
aW1wcm92ZWQgYnkgbG93ZXJpbmcgdGhlIE1QTEwgYmFuZHdpZHRoIHRvIGFjY291bnQgZm9yIGhp
Z2gKPj4+IGZyZXF1ZW5jeSBub2lzZSBpbiB0aGUgcmszMjg4IFBMTC4gIEluIGVhY2ggY2FzZSBN
UExMIGJhbmR3aWR0aCB3YXMKPj4+IGxvd2VyZWQgb25seSBlbm91Z2ggdG8gZ2V0IHVzIGEgY29t
Zm9ydGFibGUgbWFyZ2luLiAgV2UgYmVsaWV2ZSB0aGF0Cj4+PiBsb3dlcmluZyB0aGUgYmFuZHdp
ZHRoIGxpa2UgdGhpcyBpcyBzYWZlIGdpdmVuIHN1ZmZpY2llbnQgdGVzdGluZy4KPj4KPj4gVGhl
cmUgYXJlIG5vIGRldmljZS10cmVlcyB0aGF0IHVzZSAicm9ja2NoaXAscmszMjg4LWNydSIsIEFG
QUlDUy4uCj4gCj4gV2hhdCBkbyB5b3UgbWVhbj8gSW4gbXkgdHJlZSBJIGhhdmU6Cj4gCj4gYXJj
aC9hcm0vYm9vdC9kdHMvcmszMjg4LmR0c2k6ODYzOiAgICAgICAgICAgICAgY29tcGF0aWJsZSA9
ICJyb2NrY2hpcCxyazMyODgtY3J1IjsKPiBkcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMjg4
LmM6OTg1OkNMS19PRl9ERUNMQVJFKHJrMzI4OF9jcnUsICJyb2NrY2hpcCxyazMyODgtY3J1Iiwg
cmszMjg4X2Nsa19pbml0KTsKCk9oLCBpdCBpcyBBUk0zMiwgSSB3YXMgbG9va2luZyBhdCBBUk02
NCBvbmx5LiBNeSBiYWQuCgo+PiBXYXMgdGhpcyBjaGFuZ2UgdGVzdGVkIG9uIGEgbm9uLVJLMzI4
OCBkZXZpY2VzPwo+IAo+IFllcywgb24gYSByazM1NjggOykKPiAKPiBUaGUgcGF0Y2ggaGFzIGJl
ZW4gcG9zdGVkIGJhY2sgaW4gMjAxNSBhbmQgd2FzIGFkZGVkIHRvIHRoZSBSb2NrY2hpcAo+IGRv
d25zdHJlYW0ga2VybmVsIGluIDIwMTYuIEkgZG9uJ3Qga25vdyBob3cgdGhvcm91Z2hseSBSb2Nr
Y2hpcCB0ZXN0cwo+IHRoZWlyIGtlcm5lbHMsIGJ1dCBJIGFzc3VtZSB0aGUgcGF0Y2ggd291bGRu
J3QgYmUgdGhlcmUgaWYgaXQgY2F1c2VkCj4gYW55IHByb2JsZW1zLgoKVGhhbmsgeW91IGZvciB0
aGUgY2xhcmlmaWNhdGlvbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
