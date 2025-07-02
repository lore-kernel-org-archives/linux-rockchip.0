Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 837EDC87FCB
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Aug 2025 10:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Guade6uEt2/mkYfVomB3r4vX4Sb3JgWNIbmZ4twH9/c=; b=PsqbxYa+ebBLOY
	IN6z8kJnAfdpfSPCCDpb/SIeDbGSoSSX7I2/JULLyRk8gB1RPdB0qxXh5o9bcHgLTWnQfv7/1f54Q
	0GOEt0E2n0JxGEkZpa53HldRZishyzFPlvWzvByAGLCEBw9doe9eIqyce2heDR6kV+T4JRovb9LKo
	9qb2a9YMsAe0FFpkzJveg5bYQkLkfukqlJ/14q8b3LxZhz7+XQI2XQ8mGRffeCwL7eFThGk+/ehXd
	ecA9Kzsm+GIDJIP15k5VTtAJJKZqFzWefMfZRLsYRMzfcKCVVrydZPkK+yoQ+sP1OjwBEjC1ouTz9
	NTjmnYp62UGTK11oDrNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujbcF-0000000Evpq-0s0I;
	Wed, 06 Aug 2025 10:43:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWsIY-00000007Ypl-2Sbo;
	Wed, 02 Jul 2025 07:54:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=tvOZdvk9xLUnKu5SxXEMKxhqw2iwMZ1hxg/eODHANnM=; b=G8HR0ixe4/YmfbgKN4xVePil4I
	lMe8SlxdTgagekT83gZaDwP1BjfAtDXQNhbR4ZwYMEekyDHeGQB6XvYN9nlG5VIJiKclb5NTPTYWe
	AJLFiUtN9pEcXa+x16dizmeMZQu7CB9/qCQcJ9kSlmgzKCjkKlEkh+fCmTJy1xNMASpv5WkFrWOrh
	QrHw2N+X328mZpgsp86XrbP0dhjx39WlzmTKaXsGtnvmVkeiY72GL0hqC/6k0rExv4l2fVnwnwa3K
	HLPYK2hGpFw0c7KsxAhuJVDQOhiuLFwwHeQg3Qsha+K0JQ2qhFZF6dZt04By/feF/7x2cq25HN8nz
	MjGBnavA==;
Received: from mgamail.intel.com ([192.198.163.11])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWsIV-00000007IaS-0Man;
	Wed, 02 Jul 2025 07:54:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1751442867; x=1782978867;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=rUwUc12CwDq37/2slGik7dRlGZeOaTXSpDsb9W6K1i0=;
  b=CJ/rikitTG+Z3XTDcxm8drhim2SGv7EorahCtOkq88x+FbWjdf9izjVB
   yJPU00oFo1iGHkd7yfc5/TmwLSFJrlR5jQTTo9KVgfdnuyM9cmYtHJpgB
   lWIWI8HBbInLGR4itY/kazTQe6ehv1rT2gl2pwJQ3jbm4aluKJUTtdxXT
   juo1qRg8qOJmISdHO3+zgy8ssbXCxdSd+uTCumSwLG/w9Y9HiPOHSu/jM
   E3bg0dSecl30oiVbUYQXNH5vxP9IcocIoAn/Q5Klh8bMU/pr4WcIsNZSp
   6N6uMwpa+mvDa5AiGvQlkGuY+IjuQnu4vLjh/Yuj11PKFatWbkx9TV8dX
   A==;
X-CSE-ConnectionGUID: uTC7JMptR2+PmMNvyoqBRg==
X-CSE-MsgGUID: HzOFz/w9QRemKsQ5tHIWpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="64326084"
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; 
   d="scan'208";a="64326084"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jul 2025 00:54:18 -0700
X-CSE-ConnectionGUID: 98SccRJrQ5yvJqszW1ShBA==
X-CSE-MsgGUID: 52dATgF7Sy6tK3S06PLKug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; 
   d="scan'208";a="153636445"
Received: from smile.fi.intel.com ([10.237.72.52])
  by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jul 2025 00:53:58 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98.2)
	(envelope-from <andriy.shevchenko@intel.com>)
	id 1uWsHv-0000000BrCM-1jUQ;
	Wed, 02 Jul 2025 10:53:51 +0300
Date: Wed, 2 Jul 2025 10:53:50 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>,
	Waqar Hameed <waqar.hameed@axis.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Julien Panis <jpanis@baylibre.com>,
	William Breathitt Gray <wbg@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>, Peter Rosin <peda@axentia.se>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Cosmin Tanislav <cosmin.tanislav@analog.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matteo Martelli <matteomartelli3@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Francesco Dolcini <francesco@dolcini.it>,
	=?iso-8859-1?Q?Jo=E3o_Paulo_Gon=E7alves?= <jpaulo.silvagoncalves@gmail.com>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>,
	Mudit Sharma <muditsharma.info@gmail.com>,
	Gerald Loacker <gerald.loacker@wolfvision.net>,
	Song Qiang <songqiang1304521@gmail.com>, Crt Mori <cmo@melexis.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Karol Gugala <kgugala@antmicro.com>,
	Mateusz Holenko <mholenko@antmicro.com>,
	Gabriel Somlo <gsomlo@gmail.com>, Joel Stanley <joel@jms.id.au>,
	Claudiu Manoil <claudiu.manoil@nxp.com>,
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	Wei Fang <wei.fang@nxp.com>, Clark Wang <xiaoning.wang@nxp.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sebastian Reichel <sre@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Han Xu <han.xu@nxp.com>, Haibo Chen <haibo.chen@nxp.com>,
	Yogesh Gaur <yogeshgaur.83@gmail.com>,
	Mark Brown <broonie@kernel.org>, Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Souradeep Chowdhury <quic_schowdhu@quicinc.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Peter Ujfalusi <peter.ujfalusi@linux.intel.com>,
	Bard Liao <yung-chuan.liao@linux.intel.com>,
	Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Kai Vehmanen <kai.vehmanen@linux.intel.com>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, kernel@axis.com,
	linux-iio@vger.kernel.org, linux-omap@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-input@vger.kernel.org,
	linux-mmc@vger.kernel.org, imx@lists.linux.dev,
	netdev@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-pwm@vger.kernel.org, linux-amlogic@lists.infradead.org,
	linux-spi@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
	sound-open-firmware@alsa-project.org, linux-sound@vger.kernel.org
Subject: Re: [PATCH] Remove error prints for devm_add_action_or_reset()
Message-ID: <aGTljgePpiPJq2xj@smile.fi.intel.com>
References: <pnd7c0s6ji2.fsf@axis.com>
 <ylr7cuxldwb24ccenen4khtyddzq3owgzzfblbohkdxb7p7eeo@qpuddn6wrz3x>
 <CAHp75Ve=Zas8=6YKoPeTRrvjCaTyyRAyJG1gBLripqZgQpfg7g@mail.gmail.com>
 <zxtyk4vly2salnoy3lng2ni7pzu3wg6qnmucadnclfigrd2m2m@i6xcrmvh34r5>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <zxtyk4vly2salnoy3lng2ni7pzu3wg6qnmucadnclfigrd2m2m@i6xcrmvh34r5>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_085427_782235_26C0A76B 
X-CRM114-Status: GOOD (  29.95  )
X-Mailman-Approved-At: Wed, 06 Aug 2025 03:42:49 -0700
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

T24gV2VkLCBKdWwgMDIsIDIwMjUgYXQgMDg6MTA6MjhBTSArMDIwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4gT24gVHVlLCBKdWwgMDEsIDIwMjUgYXQgMDg6NTc6MDJQTSArMDMwMCwgQW5k
eSBTaGV2Y2hlbmtvIHdyb3RlOgo+ID4gT24gVHVlLCBKdWwgMSwgMjAyNSBhdCA4OjQ04oCvUE0g
VXdlIEtsZWluZS1Lw7ZuaWcgPHVrbGVpbmVrQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gPiBPbiBU
dWUsIEp1bCAwMSwgMjAyNSBhdCAwNTowMzozM1BNICswMjAwLCBXYXFhciBIYW1lZWQgd3JvdGU6
CgouLi4KCj4gPiA+IFdpdGggdGhhdAo+ID4gPgo+ID4gPiAgICAgICAgIHJldCA9IGRldm1fYWRk
X2FjdGlvbl9vcl9yZXNldChkZXYsIG1lc29uX3B3bV9zNF9wdXRfY2xrLAo+ID4gPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtZXNvbi0+Y2hhbm5lbHNbaV0uY2xrKTsK
PiA+ID4gICAgICAgICBpZiAocmV0KQo+ID4gPiAgICAgICAgICAgICAgICAgcmV0dXJuIGRldl9l
cnJfcHJvYmUoZGV2LCByZXQsCj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAiRmFpbGVkIHRvIGFkZCBjbGtfcHV0IGFjdGlvblxuIik7Cj4gPiA+Cj4gPiA+IGZyb20g
ZHJpdmVycy9wd20vcHdtLW1lc29uLmMgaXMgb3B0aW1pemVkIHRvCj4gPiA+Cj4gPiA+ICAgICAg
ICAgcmV0ID0gZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0KGRldiwgbWVzb25fcHdtX3M0X3B1dF9j
bGssCj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1lc29uLT5j
aGFubmVsc1tpXS5jbGspOwo+ID4gPiAgICAgICAgIGlmIChyZXQpCj4gPiA+ICAgICAgICAgICAg
ICAgICByZXR1cm4gcmV0Owo+ID4gPgo+ID4gPiAuCj4gPiA+Cj4gPiA+IEkgd291bGQgcHJlZmVy
IHRoaXMgYXBwcm9hY2gsIGJlY2F1c2UgYSkgdGhlcmUgaXMgbm8gbmVlZCB0byBkcm9wIGFsbAo+
ID4gPiBkZXZfZXJyX3Byb2JlKClzIGFmdGVyIGRldm1fYWRkX2FjdGlvbl9vcl9yZXNldCgpIGFu
ZCBiKSB0aGUKPiA+ID4gZGV2X2Vycl9wcm9iZSgpcyBjb3VsZCBzdGF5IGZvciBjb25zaXN0ZW5j
eSBpbiB0aGUgZXJyb3IgcGF0aHMgb2YgYQo+ID4gPiBkcml2ZXIuCj4gPiAKPiA+IFdoeSBkbyB3
ZSBuZWVkIGEgZGV2X2Vycl9wcm9iZSgpIGFmdGVyIGRldm1fYWRkX2FjdGlvbiooKT8gSSB3b3Vs
ZAo+ID4gZXhwZWN0IHRoYXQgdGhlIG9yaWdpbmFsIGNhbGwgKGlmIG5lZWRlZCkgY2FuIHNwaXQg
b3V0IGEgbWVzc2FnZS4KPiAKPiBJJ20gbm90IGEgYmlnIGZhbiBvZiBBUEkgZnVuY3Rpb25zIHRo
YXQgZW1pdCBhbiBlcnJvciBtZXNzYWdlLgoKV2UgZG8gaGF2ZSB0aGF0IGluIGRldm1faW9yZW1h
cCooKSBmYW1pbHkuIEp1c3Qgc2F5aW5nLi4uCgo+IEluIGdlbmVyYWwgdGhlIGNhbGxlciBrbm93
cyBiZXR0ZXIgd2hhdCB3ZW50IHdyb25nIChoZXJlOgo+IGRldm1fYWRkX2FjdGlvbl9vcl9yZXNl
dCgpIGRvZXNuJ3Qga25vdyB0aGlzIHRvIGJlIGFib3V0IHRoZSBjbGtfcHV0Cj4gYWN0aW9uKSwg
c28gdGhlIGVycm9yIG1lc3NhZ2UgY2FuIGJlIG1vcmUgZXhwcmVzc2l2ZS4KCkknbSBub3Qgc3Vy
ZSBJIHdhcyBjbGVhciBhYm91dCBteSBzdWdnZXN0aW9uLiBXaGF0IEkgYXJndWVkIGlzIHNvbWV0
aGluZyBsaWtlCnRoaXMKCmRldm1fZm9vX2FsbG9jKCkKewoJcmV0ID0gZm9vX2FsbG9jKCk7Cglp
ZiAocmV0KQoJCXJldHVybiBkZXZfZXJyX3Byb2JlKCk7CgoJcmV0dXJuIGRldm1fYWRkX2FjdGlv
bl9vcl9yZXNldCgpOwp9Cgpmb29fYWxsb2MoKSBpbiBteSBleGFtcGxlIGlzIGxlZnQgdW50b3Vj
aGVkLgoKPiBBbHNvIGluIGdlbmVyYWwgYW4gQVBJIGZ1bmN0aW9uIGRvZXNuJ3Qga25vdyBpZiBh
IGZhaWx1cmUgaXMgZmF0YWwgb3IgaWYKPiB0aGUgY29uc3VtZXIgaGFuZGxlcyB0aGUgZmFpbHVy
ZSBqdXN0IHdlbGwgYW5kIGlmIHRoZSBjYWxsIGlzIHBhcnQgb2YgYQo+IGRyaXZlcidzIC5wcm9i
ZSgpIHNvIGl0J3MgdW5jbGVhciBpZiBkZXZfZXJyX3Byb2JlKCkgY2FuL3Nob3VsZCBiZSB1c2Vk
Lgo+IChJIGFkbWl0IHRoYXQgdGhlIGxhc3QgdHdvIHByb2JhYmx5IGRvbid0IGFwcGx5IHRvCj4g
ZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0KCkgYnV0IHRoYXQncyBub3QgYSBnb29kIGVub3VnaCBy
ZWFzb24gdG8KPiBtYWtlIHRoaXMgZnVuY3Rpb24gc3BlY2lhbC4gRXZlcnkgc3BlY2lhbCBjYXNl
IGlzIGEgbWFpbnRhbmFuY2UgYnVyZGVuLikKCmRldm1fKigpIGFyZSBvbmx5IHN1cHBvc2VkIHRv
IGJlIGNhbGxlZCBpbiB0aGUgcHJvYmUgcGhhc2UuIFNvIHVzaW5nCmRldl9lcnJfcHJvYmUoKSB0
aGVyZSAoaW1wbGVtZW50YXRpb25zKSBpcyBuYXR1cmFsIHRoaW5nIHRvIGRvLCBpZiByZXF1aXJl
ZC4KQW5kIHNlZSBhYm92ZSwgd2UgaGF2ZSBzdWNoIGNhc2VzIGFscmVhZHkuCgotLSAKV2l0aCBC
ZXN0IFJlZ2FyZHMsCkFuZHkgU2hldmNoZW5rbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
