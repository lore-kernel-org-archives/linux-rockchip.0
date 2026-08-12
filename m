Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D037C5CFDB
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2026 09:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qpNB0eMSzyVlB/T16WBIirn0McIBYAwICpPX5s+EZ8I=; b=jJFkKU2z1eiEa7
	fkipEgyx62IBM96iNQb1umFOInygdO9L0Gmxe+bQj4I9xvpiJCxZ50/v2tPRsl0RUvd+IFiJWeFAp
	uqzE16X9TH+rSh9jP8T5+rnpOcLlj41F/Vw4kneQJaP6Uj+uZV/wZzsVDNuauQtP/dYEpx4DNLxt/
	3EKJphr1isqg1oMLTUpiupTxg9KjY0aM3K1OdqJJC5WOPRBg4wUjTPHse6XT30Ux6SJgHiAR/XLX6
	Q9SyTAjHr7NvOLwqVvfoZHb09cUX2lC+GPOPAECfwWs3ud47Tl2I1W6WpP3MIUmHiOQwKw4O0k7aN
	9GC6uSpPUaNfFJvGaQTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5Sr-0000000FmRc-1WJb;
	Wed, 12 Aug 2026 09:41:37 +0000
Received: from flow-b8-smtp.messagingengine.com ([202.12.124.143])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5Sk-0000000FmP9-1QF3;
	Wed, 12 Aug 2026 09:41:31 +0000
Received: from phl-compute-10.internal (phl-compute-10.internal [10.202.2.50])
	by mailflow.stl.internal (Postfix) with ESMTP id 2B1C71300782;
	Wed, 12 Aug 2026 05:41:29 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-10.internal (MEProxy); Wed, 12 Aug 2026 05:41:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1786527689; x=
	1786531289; bh=VCaIqgm5h38tS1NOZz3rf/ZGDAWT4oH6Ksw3UTozkgQ=; b=I
	sWCq+ymMFy+pK2BEuBRWOTYDK6S3cYII4CId3Q6heNmaoONEosZxQNoBgTKXEAUN
	HgnMaABF/H6GSu4KyLg21ozBAELe9hG+SC7MgsKuClZvmAvoQDOaD58wuGBicHWH
	6Vet+EtGWrzTA+6mz8USO2aLcXwPVJwiY9U6amM4KThzVz7l5OnUtQYF2lV+Pi0t
	Teq+O19eT9AmCH4wmgMiY8lvRtKsn8wwNJ8gqt2y8o/HLgf8Eu4zgpacPFkIRv8L
	1ckI7aDo8jmZks7c2UaWmj8/27saOr1fWc9G8c8YCwasLgvfaAiwTQw4lICN0m/L
	IvhuV9xd/3LYU2zo6VlPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1786527689; x=1786531289; bh=V
	CaIqgm5h38tS1NOZz3rf/ZGDAWT4oH6Ksw3UTozkgQ=; b=SlWbMh4+Fyxpvj2ao
	JQI3HOduCouojbB2io9qXxkZP1U0XBbMFudgR7kEsArZenmM7X7SjpJwXHfIUeS6
	97CDjxNDJQvu/q9BCIhbjpCc/vhgbqYCmpgefMlWaEltuijyEVym4oJvOdGvTUhA
	Xby8hq6Trg4LSQrHKTcs1rqaEY4kP7eaJHP+PneD2EdasiqkwUZu7YJT5nRbz22m
	ppIp3WoqomKeMDr+Qx+HAZU17krrHrBOmPgRD4EFVjiIVjfLFZzMps2D+gTE/UAF
	rzopcQY1L8tbkT7moFupkm6RQSpnmONuDG+1pV4ANFojUNfCM4O8wZRJcMXHS9xL
	MKA9Q==
X-ME-Sender: <xms:yD98arN-A40FtT9hPRTjVVo6HMRjqluWQ1C7z1etTiT6CLwb5zvJYw>
    <xme:yD98aiHz9424hBbHT7sx_jcLnETOrZAf_hoBNrzagHYoZTFIkTij8IDZhJsvJd0Qe
    yu7CwBe9ozk60InyhDMfsPBM47Ms3u9Ya7_7JhZ3ZmJGKfKc6w3Gw>
X-ME-Received: <xmr:yD98amF3uB8O5bDXqB7WKk8dxk6WbB75Cx5zcQbQVQ3KrrEFP2iWV29lWiBh59Q2_LUmI90djg>
X-ME-Proxy-Cause: dmFkZTGwgEiQ82b/vslvxu748yQUK6wPursKF8fMIVbz67wiFGHgA47PKoO/uGXMsZMxLx
    gFPIgLOcY7P5CngkkiK3BYsM+NSvuArVGUEmY/S//Od5HX6j19/B4vsjpf5HveubJ3pf//
    pWCcY4ceqdx0GtHj0WCQ0o6J65xdr5brIk0MpFgwd1OnJb0OJtZbfDBehL90KckpJx/ici
    /427xioY7E6zKhb2nnVrNb5/eVe38u0ELJVPMEpl79CB4mXXIS+TOXwQ2vG5Pe68Rd3XXD
    xmR8fAtcy04eoj5dkZNb571/YdUoGmvjFo0tW/6wl1YthjyIcmyfW3v1C+VPOybfcM4wWP
    Tl6eyUPtJkyhWVCvNl+hTzD/pCa6fif3pxWK/mRqkkFmLLxolhf+Kxdbw1ixKiPq0y/Pir
    yG0ATqMFq8iwhhw22PoynBYi4Jz5QuGzS2u6GqG5IpsMjY2Ul/3UjRWM6dpm0kptjN8ufE
    LmFxZDquW6bcDvBcrPjRz1GW8FIufkPaypoPzYZ/VQoWKG4V5C9ymnLZ1dOt2fBwXsftYR
    yYdt97+Rnh9j2F71OtmG6GS/ghqWMqYoLF6MhwZ/1k1leSVKTPYXpTsL9aToidw28llefd
    2Bg3SGg/0i2IsActKoc/A2TXwpIG5jy/4OsoxGMuhsZaewW6qYlghvNvpEKg
X-ME-Proxy: <xmx:yD98apCVlPuUQUABFGtjRBhyxDSylSWWxalVC-NMxPZ1_qlHD356yA>
    <xmx:yD98ajm_YVoJfakxd1XHOEvdkUV4DYFiLpUfyzCeHRf1wEkKmJUrBQ>
    <xmx:yD98av6WZl3D8s06dvvtmO6uWAeNsf40Hwojrd_EtuK3w7VToA2SbQ>
    <xmx:yD98aivb6mr_ybzKnhfIhCazXCzYN5UpCFMesKqtPKM8ExA26oSvVw>
    <xmx:yD98ajQL8mmYb5J8u2f0E3PYe5EUTPVXY-FKP3Z65pIdeJvdBDhMPr_e>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 12 Aug 2026 05:41:22 -0400 (EDT)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: tomeu@tomeuvizoso.net,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joro@8bytes.org,
	will@kernel.org,
	robin.murphy@arm.com,
	ulfh@kernel.org,
	p.zabel@pengutronix.de,
	ogabbay@kernel.org,
	zhangqing@rock-chips.com
Cc: royalnet026@gmail.com,
	alchark@flipper.net,
	chaoyi.chen@rock-chips.com,
	diederik@cknow-tech.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jiaxing Hu <gahing@gahingwoo.com>
Subject: [PATCH v7 01/10] accel/rocket: take the completion register writes under job_lock
Date: Wed, 12 Aug 2026 21:40:56 +1200
Message-ID: <20260812094106.1391698-2-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260812094106.1391698-1-gahing@gahingwoo.com>
References: <20260812094106.1391698-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_024130_451907_0DA50B0D 
X-CRM114-Status: GOOD (  13.29  )
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

rocket_job_handle_irq() writes OPERATION_ENABLE and INTERRUPT_CLEAR before
taking job_lock, while rocket_job_hw_submit() writes OPERATION_ENABLE from
inside it. The two can therefore race: a completion being handled on one core
can write its zero after a submit on the same core has written its one, and
stop a task that has only just started.

Nothing in tree hits this often, because the interrupt is the only completion
path and it does not overlap its own submit, but the ordering is wrong on its
own terms.

Move both writes inside the existing scoped_guard() rather than adding a second
critical section, so stopping the block and deciding what to start next are one
atomic step.

Fixes: 0810d5ad88a1 ("accel/rocket: Add job submission IOCTL")
Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
---
 drivers/accel/rocket/rocket_job.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/accel/rocket/rocket_job.c b/drivers/accel/rocket/rocket_job.c
index bb77b6bf0..4c01b703e 100644
--- a/drivers/accel/rocket/rocket_job.c
+++ b/drivers/accel/rocket/rocket_job.c
@@ -345,10 +345,15 @@ static void rocket_job_handle_irq(struct rocket_core *core)
 {
 	pm_runtime_mark_last_busy(core->dev);
 
-	rocket_pc_writel(core, OPERATION_ENABLE, 0x0);
-	rocket_pc_writel(core, INTERRUPT_CLEAR, 0x1ffff);
+	scoped_guard(mutex, &core->job_lock) {
+		/*
+		 * Stopping the block belongs under the lock. hw_submit() writes
+		 * OPERATION_ENABLE too, and outside the lock this zero can land
+		 * after that one and stop a task that has only just started.
+		 */
+		rocket_pc_writel(core, OPERATION_ENABLE, 0x0);
+		rocket_pc_writel(core, INTERRUPT_CLEAR, 0x1ffff);
 
-	scoped_guard(mutex, &core->job_lock)
 		if (core->in_flight_job) {
 			if (core->in_flight_job->next_task_idx < core->in_flight_job->task_count) {
 				rocket_job_hw_submit(core, core->in_flight_job);
@@ -360,6 +365,7 @@ static void rocket_job_handle_irq(struct rocket_core *core)
 			pm_runtime_put_autosuspend(core->dev);
 			core->in_flight_job = NULL;
 		}
+	}
 }
 
 static void
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
