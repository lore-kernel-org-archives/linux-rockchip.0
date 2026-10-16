Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D04C4CCF2C4
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Oct 2026 17:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gT0zFWGwKlUbM7mrqGkEzikdvMrRHlH5APOqHBCBKns=; b=Ne7uqitheSy3tR
	agVIg8dxaUPoJSASpuC6ErtgDY9Sm3Lw+Z/cV99Sq+ieLVdqVRMBYauqVkTN1JFh9oOk17oO/E/0Z
	lD0/aZJgtup9cf7Ya3J3LOZfd5q4QNSiaCNEf/KtFrJiRCPScTLv8C6PZmttNEfh0SR10BmsetLKb
	OJUyXrrA0UHv33oPPygVhfzJmh+YiUJnQkUF5cHt6VOjSWyKP7DAPCg+c4ji8S2JQUCV4o4o6+nwc
	KrNtMqy443OK9w1GbV7qHFJsJjkYAT3648sPlWO+I2sRMVl7BIuthtXjMNaoaSTPAwphtt59kzCAl
	CR4x46FHy3ALi/FtP6ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIUyH-000000066ty-47gt;
	Sun, 18 Oct 2026 17:46:57 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIUyC-000000066tZ-1JZD;
	Sun, 18 Oct 2026 17:46:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 11058600D1;
	Sun, 18 Oct 2026 17:46:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A623A1F000C4;
	Sun, 18 Oct 2026 17:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792345609;
	bh=qm0bUZ3rcefAzU93QB8wx2LCgCq+YoUpSKzCmzw8aJ4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=MgnkizFNOowWE0evXr5Uh7vD+jPSO/gov/FeEK/pjNv61+X6+VimnKiL+gqgPhcTs
	 /CMiac64dU9bA9cVg+BtlqJVWkEqvDLka/3h4Nm290GCXsZ/q/+R78ZTxGq5JcaRqC
	 65QcxFTZ7f1Msa1P1CPR7L3Sg7c+AMXBDaQoDpuCYzDuE0w+sR5tWuFMPuHzyJBx3t
	 Pf6JUV719A+lnO1EXjyeqCIr5hTwxP275HOPCfkVWguVthrbUVj4EhQE4R7UjmGg7g
	 B7BHLbKEtecZPWwidrdGQiLbtk6ICAo/FHXjg4O8qImalzZJiNj+KBVK8fn7rZp3Ze
	 pJocK/ZjMhiTw==
From: Mark Brown <broonie@kernel.org>
To: Vijendar Mukunda <Vijendar.Mukunda@amd.com>, 
 Venkata Prasad Potturu <venkataprasad.potturu@amd.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, povik+lin@cutebit.org, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Andrei Simion <andrei.simion@microchip.com>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 David Rhodes <david.rhodes@cirrus.com>, 
 Richard Fitzgerald <rf@opensource.cirrus.com>, 
 Shengjiu Wang <shengjiu.wang@gmail.com>, Xiubo Li <Xiubo.Lee@gmail.com>, 
 Fabio Estevam <festevam@gmail.com>, Nicolin Chen <nicoleotsuka@gmail.com>, 
 Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Cezary Rojewski <cezary.rojewski@intel.com>, 
 Peter Ujfalusi <peter.ujfalusi@linux.intel.com>, 
 Bard Liao <yung-chuan.liao@linux.intel.com>, 
 Kai Vehmanen <kai.vehmanen@linux.intel.com>, 
 Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 Heiko Stuebner <heiko@sntech.de>, phucduc.bui@gmail.com
In-Reply-To: <20261016040946.521195-1-phucduc.bui@gmail.com>
References: <20261016040946.521195-1-phucduc.bui@gmail.com>
Subject: Re: [PATCH 00/11] ASoC: Address remaining PCM constraint issues
Message-Id: <179218517604.3162228.12724790769290148003.b4-ty@b4>
Date: Fri, 16 Oct 2026 22:12:56 +0100
MIME-Version: 1.0
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=2998; i=broonie@kernel.org;
 h=from:subject:message-id; bh=IbT8SVwvSYBBCTFESIc2KDm/QvSO2/KtgP4EGXiEp2k=;
 b=owGbwMvMwCWm/754w+YLFp2Mp9WSGLKusq6VV7j4Q+fT+tV8Vk/qHp+cEyB9TcR7+6xfMrncC
 cd6DjL87ihlYRDjYpAVU2SJy+J+WV/yeg3fwYVtMHNYmUCGMHBxCsBERF8w/I/7XJ85O8xAc/Hn
 nbNu/1105pQVi4Gyd/41ga2VX2ew9MYzMjQYSM+fFbll6zJbMxubowlLrefOfC8z43y7r+I/4eA
 5/7kA
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
Cc: imx@lists.linux.dev, wangdicheng <wangdicheng@kylinos.cn>, Kees Cook <kees@kernel.org>, Sang-Heon Jeon <ekffu200098@gmail.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Neo Chang <YLCHANG2@nuvoton.com>, linux-rockchip@lists.infradead.org, Chris Bainbridge <chris.bainbridge@gmail.com>, Charles Keepax <ckeepax@opensource.cirrus.com>, linux-sound@vger.kernel.org, u.kleine-koenig@baylibre.com, Zain Aboobacker <zainaboobacker33@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>, Md Shofiqul Islam <shofiqtest@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, asahi@lists.linux.dev, Hemanth Selam <hemanth.selam@gmail.com>, linuxppc-dev@lists.ozlabs.org, Syed Saba Kareem <syed.sabakareem@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 16 Oct 2026 11:09:35 +0700, phucduc.bui@gmail.com wrote:
> ASoC: Address remaining PCM constraint issues
> 
> From: bui duc phuc <phucduc.bui@gmail.com>
> 
> Hi all,
> 
> Since v1 has already been applied, this series provides incremental
> changes to address the remaining items from v2:
>  - Add comments explaining why .open() and .startup() must return 0
>    on success to prevent the issue from being reintroduced.
>  - Add Reviewed-by tags from Vijendar Mukunda and Chancel Liu,
>    and Acked-by tags from Morimoto-san and Cezary.
>  - Remove redundant integer constraints already applied
>    by snd_dmaengine_pcm_open().
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-7.4

Thanks!

[01/11] ASoC: amd: Explain component open return value handling
        https://git.kernel.org/broonie/sound/c/1ba2cb30eeab
[02/11] ASoC: apple: Explain DAI startup return value handling
        https://git.kernel.org/broonie/sound/c/ec2e1434c7f7
[03/11] ASoC: atmel: Explain component open return value handling
        https://git.kernel.org/broonie/sound/c/1554ce7a5d99
[04/11] ASoC: codecs: Explain DAI startup return value handling
        https://git.kernel.org/broonie/sound/c/a6b1f3ccca48
[05/11] ASoC: imx-pcm-rpmsg: Explain component open return value handling
        https://git.kernel.org/broonie/sound/c/f3e3dbbbbfd6
[06/11] ASoC: intel: atom: Explain DAI startup return value handling
        https://git.kernel.org/broonie/sound/c/2f8d93394b7f
[07/11] ASoC: renesas: msiof: Explain component open return value handling
        https://git.kernel.org/broonie/sound/c/394f91bd0f7a
[08/11] ASoC: renesas: msiof: Remove redundant period constraint
        https://git.kernel.org/broonie/sound/c/d2f4c848d010
[09/11] ASoC: renesas: rz-ssi: Explain component open return value handling
        https://git.kernel.org/broonie/sound/c/65850cb2f9ce
[10/11] ASoC: renesas: rz-ssi: Remove redundant component open callback
        https://git.kernel.org/broonie/sound/c/a0b64de6ea7e
[11/11] ASoC: rockchip: Explain DAI link startup return value handling
        https://git.kernel.org/broonie/sound/c/48ed45aa30ce

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
