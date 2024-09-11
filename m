Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE50CEE4995
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Sep 2024 11:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lBHZlKrUDhf4e48S9MyYw4n/yAKxQN8lVRR28s6pKfE=; b=ip/D+TU01UxDmA
	QQ0CSD6tlmdET1GY+aupPCyZqr9biepc389WGZ/lkQkDVFsJrbSJvx268buq65KXGTW3aFeIJ6p4h
	LQHFlZruLueyNFERCBOphOTgVS+zZaC09+URWN3mhKepxgEVJtaCPJoMRxHNFVvcDrj6mxIbsUskC
	UgD1xwjNDpy5sw9icjL3QcLRaX4/w5c3NGpDJ2yiy4asWAebTXQRxz5Fr2Ke0OMuQUYdouSMIeDlQ
	w8X2DQDpIUhpEcTQ16Kcb5VmBLcTYSIB0EL3yI4yIxzTJB9GDmjJi2/a5nvM/bzPGDF/IfC0S3U6j
	0ApWsBKDHXl0WbTJ9E+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soLaV-00000009J66-3rOl;
	Wed, 11 Sep 2024 11:32:43 +0000
Received: from mout.web.de ([212.227.15.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soLW5-00000009I70-2zPm;
	Wed, 11 Sep 2024 11:28:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1726054066; x=1726658866; i=markus.elfring@web.de;
	bh=yTtZxWE0JHb3TnA6oJ50YzGe95/FIcKE44d4OiLu6iY=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=v7O+hv0Pzxur6hSXyQsSyzWcSvALNs8t7DoMepgzk/EIvE6coR6h5wrLCiV84VP2
	 yWGTGdFq8d2lGn4B1OfVqsyFJgIlfpjHymgYNYA9yUAbtorOqP1EDndL+reSaKsTq
	 k2v7NX1ZLhl23YUlMOJdlb5ylRrT5MdmNXZWkukOPFBKHTuTNAo0BuLPirsHOpmWS
	 /Zun4/Bg1c4xr2nhs0HQspM7IqYmhm+nX7Tg6byaFLaP4bnIonedU5zYWDrGyMMBY
	 1NhZNIQxfgE143BOpBQ/oxj9Lw2QAh3jvx9vKvlcY8SiZ5Q3eZEsgD5W41Fwbrdt9
	 5HLRQpxflVyC3BLDMw==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.86.95]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MSIF2-1sQ2I61AYC-00NmSK; Wed, 11
 Sep 2024 13:27:46 +0200
Message-ID: <50b75b24-afbd-46cf-af4d-01e6ea4832dc@web.de>
Date: Wed, 11 Sep 2024 13:27:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 iommu@lists.linux.dev, linaro-mm-sig@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@gmail.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, =?UTF-8?B?SsO2cmcgUsO2ZGVs?= <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Will Deacon <will@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>
References: <20240612-6-10-rocket-v1-8-060e48eea250@tomeuvizoso.net>
Subject: Re: [PATCH 8/9] accel/rocket: Add job submission IOCTL
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20240612-6-10-rocket-v1-8-060e48eea250@tomeuvizoso.net>
X-Provags-ID: V03:K1:YmCb7NXdmFPxc7xnbYpPH3gDEvf/+oJCB9LfDAxISh25xOGXJhX
 xJqwC0k2vwG8Wg4Ljwp7J46b69w5H04HZv2saRwka7NMsngHoOuHBmnF99t40n/HTDcyhGv
 OrfeycGLIHZUB7lOU6SsqIQpHvz9/XbkMtydirXYtDwk1N8Bm+5VGFHufghtREbqgs5ak67
 RyCZOjWVRgOrA3ww41D7A==
UI-OutboundReport: notjunk:1;M01:P0:vOiVie10tQI=;pJqeoruLOD0q7PLKWjhqjCwpMIi
 wUbyfof0VkY56VFhYv5E8enK/5ratFGUpbica8CWkS3qKC1hdYt+nL1C9lBq/QYL3ggZ7tHMK
 Ay6RFBIY1peAsoplJfuNsFcf5yc/+e0a1vH3K54FG1XxeFO/KyBd1FagIie5cpHn4hag4+IGq
 Fk9XkUeWuK/w2igQAWvqKiRbdKvW4FrMZDe29pyjluya5cnGhRG6ymxugx0zGew4ta+fGLMAs
 c9e0y95ig0wgeGxExJx7DlNodPGaWckOHFx1DqwNW/ebOYhaKCljiQCWBe26rXyLX3QKbRNQB
 OD+26NpEXB3m31Scmy6ikiA5W31Fn30ExYO4LYL+yvtad8t1VygAI+DPUEOo5HsWylUeIQSJ2
 ZpAD586s5jnQmq4W3Vc9+Hf098axsiatJr+6qwvvHzrWzBLI2erE2nmpWo2hcgATmBTSUwZT4
 GM4qWb6SKc7gxH2I1Ye0b9Z+gc6ZDgFSu2HDMr9DGS5qWGTpQJfJGuV1VNaLqEFGeGQwkvUwd
 giCNsWeWCkGNvKws6NOLjWJUhsjYO6jLNeIIyjD4oWwKikAujz/MpjFh9H7AXFtJgTkdUvov/
 ra0USbAlz9O58lp7DkyTQtNap5DGe9arwchl5QkVTe8pGtvxjMhJFb7frOH2X+fsPNCINrQFT
 y3amKgwJB2dzOEWcwV84QlydNzgJQhe86O2ihbbEBl5Buiz7slG7BWBF//5tzRxwmyOoA5o4F
 YIZExP3lWGJX0GcnA7zpzTCgIAqCRuoqiG+/TnWhl2oVEQloxmjuIMK5APcPETjfdyRYsdvNM
 ufMAAL+QG9jA4fAnPdJj9w4A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_042810_134505_0266AD46 
X-CRM114-Status: UNSURE (   5.14  )
X-CRM114-Notice: Please train this message.
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

4oCmCj4gKysrIGIvZHJpdmVycy9hY2NlbC9yb2NrZXQvcm9ja2V0X2pvYi5jCj4gQEAgLTAsMCAr
MSw3MDggQEAK4oCmCj4gK3N0YXRpYyBpbnQgcm9ja2V0X2pvYl9wdXNoKHN0cnVjdCByb2NrZXRf
am9iICpqb2IpCj4gK3sK4oCmCj4gKwltdXRleF9sb2NrKCZyZGV2LT5zY2hlZF9sb2NrKTsKPiAr
CWRybV9zY2hlZF9qb2JfYXJtKCZqb2ItPmJhc2UpOwrigKYKPiArCWRybV9zY2hlZF9lbnRpdHlf
cHVzaF9qb2IoJmpvYi0+YmFzZSk7Cj4gKwo+ICsJbXV0ZXhfdW5sb2NrKCZyZGV2LT5zY2hlZF9s
b2NrKTsK4oCmCgpVbmRlciB3aGljaCBjaXJjdW1zdGFuY2VzIHdvdWxkIHlvdSBiZWNvbWUgaW50
ZXJlc3RlZCB0byBhcHBseSBhIHN0YXRlbWVudApsaWtlIOKAnGd1YXJkKG11dGV4KSgmcmRldi0+
c2NoZWRfbG9jayk74oCdPwpodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni4xMS1y
Yzcvc291cmNlL2luY2x1ZGUvbGludXgvbXV0ZXguaCNMMTk2CgpSZWdhcmRzLApNYXJrdXMKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
