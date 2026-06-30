Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3185C43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jun 2026 13:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQHKKP9uJ8RP0N8dlvOJl61vMXkaeJdfmuMDb2/vmjo=; b=aChcLvcLptMJjL
	RptfBZTDUYjBinPzJFc7RY4JNZcM0Xfw8Z/gjkVnDwViayfcSml9hnYEosQAUW14fuQZ+b9kUEO78
	6YOtuldic/Vu+fBQqjFd0/JViUQir3rcr6cEYuvZb9B2qXbVV4YhUWXEnQwVJdqqZletNbeMH7Ea1
	qX10aC+ugZicLMjyGXLzULUqlRHrtscOQRR7UhMUemO86DhRCIWs9rePsod9GZgQDaHz0EmZfLgu7
	y/2EbkzN9wLBAIAeSgBqrz6o4RqMI0F5QARi57hiVoIgTt74xqP2M/GXv+ixpt47eoBXvA0Uw5ryp
	pM5zYK2bsKVcox2ZBjAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYG7-0000000H86u-31Cd;
	Tue, 30 Jun 2026 13:12:15 +0000
Received: from flow-b1-smtp.messagingengine.com ([202.12.124.136])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYG4-0000000H86M-2qJu;
	Tue, 30 Jun 2026 13:12:14 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailflow.stl.internal (Postfix) with ESMTP id 39F0B1300071;
	Tue, 30 Jun 2026 09:12:10 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Tue, 30 Jun 2026 09:12:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm1;
	 t=1782825130; x=1782832330; bh=8BXpW32i3b+MZ6T6RR8FcwEOaRbjJVuX
	738hyO6aW4c=; b=PJXGwFB30fcai5mjfKu2R+eBg2ljAsikpExxGKLPRLVa0NOP
	M1ycgbJJE0ZZEK9IDOqVM27W/XC2rtksn2dtwcDDEp0E0XqpMetCb1S9u1QS9vRs
	1RpG9E1DxiYICt1E4S5M+M8o0AO3d/lDRbaMGoAYitA0nB4ffxb6+I9mxnMRuZrW
	cLANa2sjxxxgEEOTOGsqEZ1+sVQ56b8BPrZ+TWxHeLWXOSBqkQGZ4b/gNvoCcROA
	YQ/iYGPf+7CaH81chhSp9iO5517lx8P174SsCtLkHncpI+lxouQgklo6Fl5c6kVj
	JNiImW96RfYUAODI1gVUSpzWqjiMshFdXgzT2Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1782825130; x=
	1782832330; bh=8BXpW32i3b+MZ6T6RR8FcwEOaRbjJVuX738hyO6aW4c=; b=N
	hGlSUZC5FJjbCQGE1G49NdD+d7cILSk+XoFg/PLocO85LTUqUcTTnA2qOez5xa/1
	7olGYURUII1QwbW7/5l/NHKGC5XPwDnnvdkTi9seGSIfK7ewoJm9gkjQJ5QixhPY
	YbiNvMDK64Ve9tqPDFF8ueJ3fFg4ZJr1ngimgTgkSEjWxANu3u9xdk+qeBWL6v2T
	nZWr7xCFbFxxlaMB1GLbgnNlMtvs11OY/SGxKARwTz9fGm77EVUE0gQcxCPI8nOp
	SWw1G+J+mz2oQD8MbsyZtTn7pTd3ZWq9QMuTxBctShNEVb6Y4gepeOn3zYb5wFmi
	9B5JpaDHEJ6cfA89KcJPg==
X-ME-Sender: <xms:p8BDaq0NvsKE4Bwmrv7s6iPNrlRLMROJJfeP0PtkiGSW7gsRd0-TDw>
    <xme:p8BDaowX_ucL4yAoCMkD8zUpTEubysfFuSXF0rmTIEEd6kwqgbgIHD5cSY_RiP5q7
    e94Qqk9PxtgNPph5Dh-eQn0ewvop-u96XOrG5qKJv32fgGLhp4LwQ>
X-ME-Received: <xmr:p8BDapzG2fnajZZ032F6c5k00KAk68fe5vP2RzELkgMs08TO2FJvPbVaiAuGz8lvK1JDMAGE4tF7lFNPlbFs-ViUMGr_wQ>
X-ME-Proxy-Cause: dmFkZTGWMpslQBp5MoMOGT3m9w2jgI36XruuqnR1pq0xzO86H7HHpTyefggyPo3gnlbJ2+
    oUnJ5655lI+FwSC+uR7gX7xFFGOmQJDOgf9Cba3Anoe3HTOIfOGCIAsgo1oJZtDql3wBBu
    SB3jkp1L6LCEgtQxQMxyoy5Barght9IrAsceMzQUUBw7yzWpezkYTkGw46uvF5pwbOwhQA
    zC2+AIIkGLJOKN5oP5DOt5CpV0EjBg1Q504AwM3NXu2EdDiyHhIj+1boTpwxsX4uWP3Dtq
    q1Sx/fGVa2o1PfHLSAbSC97hryNKZ1Xkg+kcpXHWnkeOBgW28cM/lKBZYCocptO7oNw7Xp
    RRRp1lmFluW4GD3WBSjnVRt7ShmNMV8JxE7I4KxMCGy1xK939sWK596jv4gWLGFVVsl58z
    0zIbon8UG8BOgTKT9obCI77IUrcmzyKVUgxH9BcBIXTiSVJX0hzVYDYb3z8plG9r6Qmqhw
    5XKD5CserZlglD6zl422xOx0BpMhzXw+CBy3CC9PpBgPIN0QWoaRgkg5YjLzHpvaWYMvAP
    kswZxHVzkddqUnlH+ytcMyHDd4N7HF8kZdvxlKCIeSI9lHErBxpIgzgCgK6MYR3Gs4kNlt
    yXG+xUduKp0+yACN9ZkEHsRE3C1r15KrySGCNt8HsxIUOsWWgxHUpptffVtw
X-ME-Proxy: <xmx:p8BDagp55rfDi1q_D4dxVo_2Op9MhmMsNnjsFNrFYNaOD4Ef6nhgRQ>
    <xmx:p8BDatqsCMbaET8mYMnWUgekQi8JdiMi195_l061CoO2xWwR_o3QkA>
    <xmx:p8BDahiyYZ_k6dahNCS0o5fMpNgmC8HjicFh_VY9pLuXWpbV6L1mBA>
    <xmx:p8BDauz6N3_C5O0MFtj-iENsXLL0iCKDuafUA3tyEHBXnnTDZ7XB5g>
    <xmx:qsBDamtebrD5hnYxkpqIAnk8VBxhqbqHUrgJns-p6CEdQOutmOtpa6T6>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 30 Jun 2026 09:11:58 -0400 (EDT)
Date: Tue, 30 Jun 2026 22:11:55 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig_=28The_Capable_Hub=29?= <u.kleine-koenig@baylibre.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mark Brown <broonie@kernel.org>,	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
	Bill Wendling <morbo@google.com>,	Justin Stitt <justinstitt@google.com>,
	Raag Jadav <raag.jadav@intel.com>,	Sohil Mehta <sohil.mehta@intel.com>,
	Dave Hansen <dave.hansen@linux.intel.com>,	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,	Len Brown <lenb@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>,	linux-kernel@vger.kernel.org,
	Yemike Abhilash Chandra <y-abhilashchandra@ti.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,	linux-media@vger.kernel.org,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Liam Girdwood <lgirdwood@gmail.com>,	Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>,	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,	Danilo Krummrich <dakr@kernel.org>,
 driver-core@lists.linux.dev,	Jonathan Cameron <jic23@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
	Pei Xiao <xiaopei01@kylinos.cn>,
	Shashank Balaji <shashank.mahadasyam@sony.com>,
	Ben Horgan <ben.horgan@arm.com>, Johan Hovold <johan@kernel.org>,
	linux-usb@vger.kernel.org, Nikita Kravets <teackot@gmail.com>,
	Hans de Goede <hansg@kernel.org>,
	Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	platform-driver-x86@vger.kernel.org, devicetree@vger.kernel.org,
	linux-i2c@vger.kernel.org,	Daniel Scally <dan.scally@ideasonboard.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianrui Zhao <zhaotianrui@loongson.cn>,	Bibo Mao <maobibo@loongson.cn>,
 Huacai Chen <chenhuacai@kernel.org>,	WANG Xuerui <kernel@xen0n.name>,
 kvm@vger.kernel.org,	loongarch@lists.linux.dev
Subject: Re: [PATCH v3 00/16] mod_devicetable.h: Split into per subsystem
 headers
Message-ID: <20260630131155.GA39400@sakamocchi.jp>
Mail-Followup-To: Takashi Sakamoto <o-takashi@sakamocchi.jp>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mark Brown <broonie@kernel.org>,	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
	Bill Wendling <morbo@google.com>,	Justin Stitt <justinstitt@google.com>,
	Raag Jadav <raag.jadav@intel.com>,	Sohil Mehta <sohil.mehta@intel.com>,
	Dave Hansen <dave.hansen@linux.intel.com>,	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,	Len Brown <lenb@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>,	linux-kernel@vger.kernel.org,
	Yemike Abhilash Chandra <y-abhilashchandra@ti.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,	linux-media@vger.kernel.org,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Liam Girdwood <lgirdwood@gmail.com>,	Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>,	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,	Danilo Krummrich <dakr@kernel.org>,
 driver-core@lists.linux.dev,	Jonathan Cameron <jic23@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
	Pei Xiao <xiaopei01@kylinos.cn>,
	Shashank Balaji <shashank.mahadasyam@sony.com>,
	Ben Horgan <ben.horgan@arm.com>, Johan Hovold <johan@kernel.org>,
	linux-usb@vger.kernel.org, Nikita Kravets <teackot@gmail.com>,
	Hans de Goede <hansg@kernel.org>,
	Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	platform-driver-x86@vger.kernel.org, devicetree@vger.kernel.org,
	linux-i2c@vger.kernel.org,	Daniel Scally <dan.scally@ideasonboard.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianrui Zhao <zhaotianrui@loongson.cn>,	Bibo Mao <maobibo@loongson.cn>,
 Huacai Chen <chenhuacai@kernel.org>,	WANG Xuerui <kernel@xen0n.name>,
 kvm@vger.kernel.org,	loongarch@lists.linux.dev
References: <cover.1782682124.git.ukleinek@kernel.org>
 <20260629235804.GA414914@sakamocchi.jp>
 <akNYUdAS3sbEdRqC@monoceros>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <akNYUdAS3sbEdRqC@monoceros>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_061212_995055_DE86C980 
X-CRM114-Status: UNSURE (   9.92  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Jun 30, 2026 at 08:04:26AM +0200, Uwe Kleine-K=F6nig (The Capable H=
ub) wrote:
> The impact of these firewire changes is limited to the firewire
> subsystem. So doing these later is a smaller issue. I plan to tackle
> these when this series is in. (But if you want to care about the
> firewire bits, that's fine, too.)

I promise it for firewire subsystem. Just focus on your good work ;)


Thanks

Takashi Sakamoto

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
