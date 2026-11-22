Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F033606A32A
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Nov 2026 09:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ePvtZNQ4;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=dyDUqwj1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:MIME-Version:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=AxNHGgIdih82xOW/b5UWvj3uJt85b7Up+9zxkrlL1Ns=; b=ePvtZNQ41w5lWDqLRcAK6/HBj8
	OgVaD7dYVZGfVKE+lUicuys37ZzE7KhJLjiS/XKiDxUSN3+JMRCJDFzW38nYnEZZ4YkSmj+ZBjApI
	El1Qq0EkXuSSdwg+pAdgWyZze6aEPpK08cZQAQtO0uLSchOXiLgpTP35XhOXqKpWZBfl9fYNKYwaP
	v/aCSecv6KSawio0oIIa5DBb8jnHGO+bHgaN625MMPYwpjloVF+psiQ3AVTrTkixcEW/aZWmoBQoT
	hZXNRbyVYHlY+ADVgVxGhKxO7jX06cZmifcZKHISheEDtpFeOjkiTMAUmFr+7nzZWWx0vViYGJapn
	L2Phsoqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV3vL-00000000uy3-0EaN;
	Sun, 22 Nov 2026 09:31:51 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV3vF-00000000uwd-4Ajk
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Nov 2026 09:31:48 +0000
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-3b413f6dda6so267228a91.2
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Nov 2026 01:31:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795339905; x=1795944705; darn=lists.infradead.org;
        h=message-id:date:content-transfer-encoding:content-type:mime-version
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=R5GY9TTuofYTaa/ZejIza37Mpjz95YygMJZxjVzg2k8=;
        b=dyDUqwj122vJ4cWm4eHhUXVgHJEHEjNG20gpbmYxc4Y/iFwqG43vuPsvkcRyQlg6F/
         xlmbsrDZarNwa2rBQrsrFyqW5Md8nH7/Lc238cD10qy2bs1QYn4R5xJSjnwiq5Zn7hOZ
         tIiBMOXx4MwV7kK7cKboj5DHYn621vk6xh58L7nANsfe2EMFwZ1yvDdoCem0qf3QZv24
         2LhD82RvAbfRxVc7ank3h3HEqLjvzFf4Cs0UKAfkUGa+4FUJSeeLyoeeW5K1fFkpuxi3
         zFCHj81d6n8UWOqk0PUfzuSYsPzTR4MRWE4BFL74690mTC5RBQGcZNQ20wRYtRI1MgaI
         ct0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795339905; x=1795944705;
        h=message-id:date:content-transfer-encoding:content-type:mime-version
         :references:in-reply-to:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=R5GY9TTuofYTaa/ZejIza37Mpjz95YygMJZxjVzg2k8=;
        b=VmOdCTstEDAlF9QE1v1mW/55ALlV+3J0cZXBPbGgEI6rLq5uoXxqWlb5hfQKumG6l1
         UqxBjkxpUGVbdT73D/Gxd0wI3p3sCwoXCe3Wh4NOY/cmFh/GVOpxkYbf8QW6ixTyVuXn
         6JN8+jgy2iYqRI8gHrzN9Vnz9ePI0tb1qh26aMqPUZCrjLtapQDfHks38KBG0V+mfzOw
         CpVGqrdttmvLYipwUu0kk8z6RM1dvagpA/8fOtb1AQ50TLeYdgLTc/KAzLtfEGGrQYbq
         K2uDRZmqywJKxdWyuYugu3AhkXbroMzVJ8GPjkjGdjGLQ73cT67EsTXVaMnIulDoqkFg
         EJPw==
X-Forwarded-Encrypted: i=1; AL+hErG8s/P2oEwv0Pq+Ghs8iUqQz5i400QXOgBv1FwGJTPqy5EDk8CA3Lh9Ylwe+D+Dq8UoyY2fdkBE1Kw+4HL71A==@lists.infradead.org
X-Gm-Message-State: APuU4Z9NFcezCp4d2ogBOvIkCEwSl3tytJlPSCy9g9ikWJc1Zqw0NUMK
	rhv4wL3igjVwPO0LQ5fwKrQnCNQpIBLQHCMFxHLeKYQW+5RSdOGXU7xM
X-Gm-Gg: AZFdTZeAAdZ3pKlVZnrmO2eRhTIjFQiB5BdQRsd/+BXw1xa05XwG1lvcShX9VWOqRM+
	Ihy0l7uMkn4ujkYlA3/AdvTKdFuTZFTgjttlsMO4yEd9ZIus3K+e5lcK4GKKLGcB+m/Y8gMxY42
	9gvfm9ZWv/kBurIjKAc7j7sIm6o/jx60tgd9TihzHVBIx0Cu2J4fwVFzJxYFyzjArzGfJuO3AUF
	svk8wCMUw9jEtM78YA8qKwHFFF1n74Zh+D/h88gztaoZyY22A8Bj7hdeXo5zPA+4TeuA37nmgZT
	f4Gx0xDcekwNx2VBTCOETmVYBXbOcVe/Hp0Y3EwXZeXpxkOoS70BadkcoYL/MmTktbRl3y0kOQl
	SMU53oF4JcF9reZ+ni/M8RhYOH/Iu8R7Anq4fVQO4+Zut8YhOlwC/WdFw7O+oP0AOu0kXuWapbr
	DXf2YOzdARdiHPngQXhd9uMd8+0Mu9XHd1AGno5GKfJVDZhkLBe6hC0aNS7p5xtSu9r2JDH+j95
	trkuVZn/a6kT3PbrLpEDmXbF3J0q4YonYCw6m0V+QIbSjdZMs/2gsGVZiVV5OdJMHmFsdurPfnt
	DzR6XIzqA9L528qJdrf9cuAz+AjsBOvkh12RdNLs3WW+4W+m76Qed59Ll3s5mbvoXkDg5hdDZQj
	x2DUcVOiXfx1AMqRRcPmyCpSY56M=
X-Received: by 2002:a17:90a:e705:b0:3ac:9c37:9422 with SMTP id 98e67ed59e1d1-3b41c7e4cf5mr11892464a91.2.1795339905049;
        Sun, 22 Nov 2026 01:31:45 -0800 (PST)
Received: from claudebox.iyengar.cloud ([50.39.139.68])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b405ffa98esm14795295a91.17.2026.11.22.01.31.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Nov 2026 01:31:44 -0800 (PST)
From: Arun Iyengar <aiyengar1990@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v12 06/23] drm/bridge: synopsys: dw-dp: Fix AUX transfer
 timeout race condition
In-Reply-To: <20261114-synopsys-dw-dp-improvements-v12-6-d42d3dc5bdd4@collabora.com>
References: <20261114-synopsys-dw-dp-improvements-v12-6-d42d3dc5bdd4@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Date: Sun, 22 Nov 2026 09:31:43 -0000
Message-ID: <179533990370.107225.5765165679182115805@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_013146_034299_B240EA16 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Heiko =?utf-8?q?St=C3=BCbner?= <heiko@sntech.de>, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Andy Yan <andyshrk@163.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, Igor Paunovic <royalnet026@gmail.com>, Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Alexey Charkov <alchark@flipper.net>, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, Dmitry Baryshkov <lumag@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Sat, Nov 14, 2026 at 06:00:39AM +0100, Sebastian Reichel wrote:
> @@ -1491,6 +1493,12 @@ static ssize_t dw_dp_aux_transfer(struct drm_dp_aux *aux,
>  	status = wait_for_completion_timeout(&dp->complete, timeout);
>  	if (!status) {
>  		dev_err(dp->dev, "timeout waiting for AUX reply\n");

This still drops a reply the sink did send when the IRQ thread runs
more than 10 ms late. On RK3588 (7.3, KASAN on, v11 of this series:
same 06/23), with a SCHED_FIFO hog at the IRQ thread's priority on its
CPU (busy 40 ms of every 200 ms), 1410 DPCD reads gave 183 timeouts.
Checking for the reply once more before giving up gave 0 timeouts,
with 127 late replies taken:

--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
@@ -1493,2 +1493,6 @@ static ssize_t dw_dp_aux_transfer(struct drm_dp_aux *aux,
 	status = wait_for_completion_timeout(&dp->complete, timeout);
+	if (!status) {
+		synchronize_irq(dp->irq);
+		status = try_wait_for_completion(&dp->complete);
+	}
 	if (!status) {

Feel free to fold it in.

Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>

Claude (Anthropic) wrote this change; I reviewed and tested it.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
