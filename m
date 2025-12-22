Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D706CE6ADC5
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Dec 2025 20:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLj/CW3s9PUiIOZ7w6CpauPqkt1memlue7VjXKqfFEg=; b=a4tDh//eI1AA5e
	6VlAufESa29RhUClqqP8+E5HTUVg0swms20w29mRvGdbMA0pLrzz3zBtlikoShqdmMFeXHxUF/T/0
	1E/z0eYUuuw+KPpQ9WnaJYjO11kVf1GeUcXcurhGQuwCPzBWQmGZR4FkM2YMyKR+9aXFhmdFjITVN
	0pDjDTlYcDOn/GvQ0bA/F0wrK4WxC/4fyprDJ9a557bwnk2gZqj7ykThGuYt6aZYAd9zFsvNre5Sm
	OMab6QeDxJdjGU9SLSMTqWqsZaqXKiAv9495zCx2eEL6PYWyy1z3OS3v3soweKQQS9b7KmTSDOMgU
	yI1sS0ZP9VLKneLIS++Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXmeT-0000000E8xa-0sFK;
	Mon, 22 Dec 2025 20:37:09 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXmeQ-0000000E8wy-2wTv
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Dec 2025 20:37:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 05DF34407A;
	Mon, 22 Dec 2025 20:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAFDEC16AAE;
	Mon, 22 Dec 2025 20:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766435825;
	bh=qU1xEqH8d5/3tAVNsT6IV9ERtj/PGsYjFsn2yDftN5Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PKSzpzo7dZvCE4otps9jA7DCZ+mGvpTC/qTJK1+mCdPoaOo2UXkYVRtAVg6c97RTp
	 uwjQTaFHqYu1SeoMeggsmQ9Ku0NRc4NhXYj6G7zxWcALjh2r1wMggGUuTKXeM1Cyw2
	 R+/W0sK3Gwbg3oZlkrpHXCnkfYPMveJCeD94dBivJCn4IXRyuIQV+/RKSrlkb8l8Uf
	 3H+CecKKAdH39vTExCZjz5qklsUAh0PD7jS/Eejus3xFsvP3rg1fSy86FYofbMnwUi
	 n0dlARVZElTNtzk5TV2rCGmBp4d3TPbP+05PqLX2oSrgDqB0eXNp4XqHE0Q5nnyWLP
	 JNTMq/KxbtHhA==
From: "Rafael J. Wysocki" <rafael@kernel.org>
To: Linux PM <linux-pm@vger.kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Brian Norris <briannorris@chromium.org>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-sound@vger.kernel.org
Subject: [PATCH v1 22/23] ASoC: rockchip: Discard pm_runtime_put() return value
Date: Mon, 22 Dec 2025 21:35:33 +0100
Message-ID: <5160923.0VBMTVartN@rafael.j.wysocki>
Organization: Linux Kernel Development
In-Reply-To: <6245770.lOV4Wx5bFT@rafael.j.wysocki>
References: <6245770.lOV4Wx5bFT@rafael.j.wysocki>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_123706_771974_CF144796 
X-CRM114-Status: GOOD (  14.88  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

It is better to check directly whether or not CONFIG_PM has
been enabled instead of relying on an error value returned by
pm_runtime_put() in that case because pm_runtime_put() may also return
an error value in other cases, like after writing "on" to the devices'
runtime PM "control" attribute in sysfs for one example.

This will facilitate a planned change of the pm_runtime_put() return
type to void in the future.

Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
---

This patch is part of a series, but it doesn't depend on anything else
in that series.  The last patch in the series depends on it.

It can be applied by itself and if you decide to do so, please let me
know.

Otherwise, an ACK or equivalent will be appreciated, but also the lack
of specific criticism will be eventually regarded as consent.

---
 sound/soc/rockchip/rockchip_sai.c |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

--- a/sound/soc/rockchip/rockchip_sai.c
+++ b/sound/soc/rockchip/rockchip_sai.c
@@ -1487,8 +1487,9 @@ static int rockchip_sai_probe(struct pla
 	return 0;
 
 err_runtime_suspend:
-	/* If we're !CONFIG_PM, we get -ENOSYS and disable manually */
-	if (pm_runtime_put(&pdev->dev))
+	if (IS_ENABLED(CONFIG_PM))
+		pm_runtime_put(&pdev->dev);
+	else
 		rockchip_sai_runtime_suspend(&pdev->dev);
 
 	return ret;




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
