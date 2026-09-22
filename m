Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49E61C982F1
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 08:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+yjVCRzbpqWsRFuf22WERsbA6931jD2/gw+3CIgfsUw=; b=O3ShCrbvTLJQZo
	yvjz+/EQBD4vvV4rEfzWPiOZ421DQe/1QF5ZJypjrs/NMnYIlBRHC8ZKTZh/Bnx2B4mQvwuPmAdxN
	mguxOwtljIZV0waG5/6NUyFqmf80Cb7tGWRS1wfPw+aOopjHkTlp9rpzsKjZHs9X2iZCNQfzzcI4M
	C0QqzaAWSmvzZBbcvg3+FfxPPgkH+RVWnx5NYM9Z4AMwEFaA7I/Qv7tchCet15wdYalxW6n7/OfsV
	IeasD8zRci8l+JqjgDka5MQ955sAOQ6w00v2G9I08mQGVvB21p0cw4h1lDkW43/rdImcqJVbU2Tbg
	ucfTlyTmlZ/6IT3xqCiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vRm-00000004aRS-1CVk;
	Tue, 22 Sep 2026 08:01:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vRY-00000004aFw-3ZxI
	for linux-rockchip@bombadil.infradead.org;
	Tue, 22 Sep 2026 08:01:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=VxEjmrMLU3ArphO/8yrozyx0jV5tnXGHISJN2k9QOtM=; b=HVCWMc/+nZ9jI3ONNL4OzxNXUE
	ORMZlxrlzaH4ldHx7R2A0qtxqc6JQkCWYbGWO8AR6CcUvOcsothDjnmLdYY4WXH3a/FoJB3gNyJcV
	fRGZDMxvUeiPW5gv8p0rInwUOvvd8XX8GcGnWwQzhBZTfX1kKgV6t+wECO54gOtyN6Bxj1NHNt/Mu
	XSTdfm//5UBjnMMjteSYMWLNLMtjbxeoizT1gVQ2JMcoHPE/ZNAfIl2ohHsQQ3JGJUdP0c/owCLw8
	CVSlLxQU8ZmPYZle3EFNwGM634Y248tZbUwuoATtaFVGVgIvBeUpF3BRof7JFx/zsiotP71DkUyNX
	L/nlf9pw==;
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8vRS-0000000DEcz-0Oz3
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 08:01:33 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49cfbdac7a1so1756195e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2026 01:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790064088; x=1790668888; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VxEjmrMLU3ArphO/8yrozyx0jV5tnXGHISJN2k9QOtM=;
        b=Y/o1yMIFMF8bO8gYeCYhuvZ4ITc7Dt1gr1MBFqiOs5GQmqBwL/8nDMuwc1NKLFWO3Z
         bqpM984olCxYPqdEbYOdviWfsZAbPgzp7olOJjAUmTPxNT8xxfaSWDidmAo7lKTJA+uG
         ZWySTg23r6X7uKP9zyCuZPmyAyECUBTX1tIMwM/D0YbRTaO8SwSZn9YMaBF+Nq1fsz0X
         et/gq6McgRb9Q/YWxc36bKdlJWJeJ2KBR3XtaiYRQ21xV5HQEf7cEwMX96qqNzXMEQ/W
         Q7gvlAdGepVSucfwuvIWvttd2Byz/0qH6bbWBKcpwvjoVcaGhmPVgR2AAEXL04hb99N/
         FxBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790064088; x=1790668888;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=VxEjmrMLU3ArphO/8yrozyx0jV5tnXGHISJN2k9QOtM=;
        b=Kd0SenSZoalAty8kzgjHdvCZAJ/63O+CjPN/bE6rrfNo3K4FXqPfzURLWGGXjnaRwj
         st8aM9S7mCWLRa6vOqAqimjcqsA+FSuIUGj/CC0MbWyfpTlpDstjevBSsMWtX54NxybJ
         yBTzmBMmKa0zEEUuhiA4lqY2XaeeHEZmYBgwqJyuVhymvCGWV7BwUdUeSrVzhVWFXhLD
         WCJ2zlGxrcy8W+LZSmdqKtUF3EEUbP53oN3EvIdPb2AkXG4NUxONVoHU+PXbt5ARVRtz
         2Q7TaI2MNctA9PPM/eZBjIozXzpNeP43VFZhNaoYLmSA+WU3CtXEwfTbNgxfIkWqEtZt
         aiVA==
X-Forwarded-Encrypted: i=1; AKwUvBy4/3gdi9lhz3KxaE0ksmoYqV/MlIAH4ioDl9WeN6tPn5Dyw7+b6PLcb5l9N6w0kpAX9lJvZFME6Mdw7nh9Ew==@lists.infradead.org
X-Gm-Message-State: AFuF++mAu6ZA/ip3OGp2rK6qnRADb8n3823G37YU2Ki8eHW9Uy5AgoW9
	6+qGa7qljUzhPZkvL6xOClPfEUAoeEDVGcr0mUTsiDaUHJcZbT3jfSeR
X-Gm-Gg: AYBFou1nZdpNC0R0cdb6DWi/+u2g8OQN9fumiGqfniZljVhLfrfeTBkKtJwZNqg96kZ
	GGTTZJE6l8afaTfZwV1TXEJM1UhS/T0InTojTX+dB9I1EbNLntxbPXcCL79LZe7U3OU3kMEjpEX
	XX9VrBXMeDUqvnEQNFXG+bYUlBanikT8gHqmYzwYqHNV27xUBenorjT9TKpt18OpdOJpyhzEmjL
	yea/kXVDEDb9Gk8xFVilGraMY9Ly04flv4K4zPTvisyiJELShCE8eb1YjLWfWbcKNbNVup7s5mw
	dwWx8huoASQItjNPTUlgbO3Hk9hpqfddI8cw9X9lV1ZXnBoO9r8Lnjmx32XX5Des6yGM0sUcaYk
	sIm7nVIO6kSh/NlwcgwHh9xWC/VvzL44EER5tHId8SCbRH1btd8ECYbtuEuKsuMgE5NuhgPbyJh
	q+SwdMY/9XSQi8lN9JOJ0ECDVYOyzUImfVieCF5++hx1c5iZi5gOjCPjhkT66oK2eXLGp9JZZyE
	PSReYb52KGajVq+wSukVCM2RnQfIe1pCk24vgT/bF/sP6I9ikEcZidshD0+ABHJGrNSYllz5H8u
	3Nw=
X-Received: by 2002:a05:600c:1c13:b0:49e:7186:f36e with SMTP id 5b1f17b1804b1-49fc7dc1e75mr208969905e9.1.1790064088073;
        Tue, 22 Sep 2026 01:01:28 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B80530056971C6280202175.dsl.pool.telekom.hu. [2001:4c4e:1b80:5300:5697:1c62:8020:2175])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fdaaf97e2sm18248625e9.2.2026.09.22.01.01.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 01:01:26 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
	Robert Foss <rfoss@kernel.org>,
	Sidong Yang <sidong.yang@furiosa.ai>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Jonas Karlman <jonas@kwiboo.se>,
	Guangshuo Li <lgs201920130244@gmail.com>,
	=?UTF-8?q?H=C3=BCseyin=20BIYIK?= <boogiepop@gmx.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH v2 02/11] accel/rocket: number the cores by devicetree position, not bind order
Date: Tue, 22 Sep 2026 10:01:05 +0200
Message-ID: <20260922080114.44662-3-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260922080114.44662-1-royalnet026@gmail.com>
References: <20260922080114.44662-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_090130_409285_17010ADF 
X-CRM114-Status: GOOD (  23.55  )
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

rocket_job_hw_submit() programs the S_POINTER registers of a core with an
extra bit derived from core->index, the way the vendor driver derives it
from the hardware number of the core. rocket_probe() sets core->index to
the slot the core takes in rdev->cores[], which is the order the cores
bind in.

The two agree only while the cores that bind are a prefix of the core
nodes in the devicetree, in devicetree order. Unbind them and bind them
back with a different core first, have one core's probe deferred behind a
sibling's, or disable a core other than the last one, and every task
submitted to a core whose slot is not its hardware number times out after
500 ms. The reset that follows does not help, and the inference finishes
with wrong output.

Observed on an Orange Pi 5 Plus with a KASAN build, over all six bind
orders of the three cores: only the devicetree order ran clean. The other
five produced 27 to 141 "NPU job timed out". In four of them no output
tensor changed with the input, and the harness gave up before its first
measured round; the fifth got through a six-second run with 27 timeouts
and a wrong top-1 class. All but one of the timeouts land on the cores
whose slot is not their hardware number, in proportion to the tasks the
scheduler hands them, and in both directions of the mismatch.

Number the cores by their position among the core nodes in the devicetree
instead, which is what the hardware number is.

The wrong value has been assigned since the driver was added, but it only
reached the hardware once the extra bit was introduced, hence the Fixes
tag below.

Fixes: 0810d5ad88a1 ("accel/rocket: Add job submission IOCTL")
Cc: stable@vger.kernel.org
Assisted-by: LLM sparse checkpatch
Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
Supersedes the standalone posting:
https://lore.kernel.org/r/20260905135612.7324-1-royalnet026@gmail.com
Same diff. The message now says the numbers come from a KASAN build,
corrects the timeout range to 27-141 against the raw log (it said 140),
says what the four failed orders showed (the output did not change with
the input; it said an oracle rejected the output), notes the one timeout
that landed on a matching core, and drops the throughput figure, which
was measured under KASAN.

 drivers/accel/rocket/rocket_core.h |  5 +++++
 drivers/accel/rocket/rocket_drv.c  | 31 +++++++++++++++++++++++++++++-
 2 files changed, 35 insertions(+), 1 deletion(-)

diff --git a/drivers/accel/rocket/rocket_core.h b/drivers/accel/rocket/rocket_core.h
index f6d7382854ca9..46ed8352a79d2 100644
--- a/drivers/accel/rocket/rocket_core.h
+++ b/drivers/accel/rocket/rocket_core.h
@@ -30,6 +30,11 @@
 struct rocket_core {
 	struct device *dev;
 	struct rocket_device *rdev;
+	/*
+	 * Hardware number of the core: its position among the core nodes in
+	 * the devicetree. Not an index into rdev->cores[] - that slot is what
+	 * find_core_for_dev() returns.
+	 */
 	unsigned int index;
 
 	int irq;
diff --git a/drivers/accel/rocket/rocket_drv.c b/drivers/accel/rocket/rocket_drv.c
index 2bcfe4ab3c68f..7d927bb6b322d 100644
--- a/drivers/accel/rocket/rocket_drv.c
+++ b/drivers/accel/rocket/rocket_drv.c
@@ -157,10 +157,39 @@ static const struct drm_driver rocket_drm_driver = {
 	.desc			= "rocket DRM",
 };
 
+/*
+ * The extra bit that rocket_job_hw_submit() sets in the S_POINTER registers
+ * is the hardware number of the core, which is its position among the core
+ * nodes in the devicetree: a disabled core keeps its number. The slot a core
+ * takes in rdev->cores[] is the order the cores happened to bind in, and the
+ * two only agree while the cores that bind are a prefix of those nodes, in
+ * devicetree order. Every task submitted to a core whose slot is not its
+ * hardware number then times out.
+ */
+static int rocket_core_hw_index(struct device *dev)
+{
+	struct device_node *np;
+	int index = 0;
+
+	for_each_matching_node(np, dev->driver->of_match_table) {
+		if (np == dev->of_node) {
+			of_node_put(np);
+			return index;
+		}
+		index++;
+	}
+
+	return -ENODEV;
+}
+
 static int rocket_probe(struct platform_device *pdev)
 {
+	int index = rocket_core_hw_index(&pdev->dev);
 	int ret;
 
+	if (index < 0)
+		return index;
+
 	if (rdev == NULL) {
 		/* First core probing, initialize DRM device. */
 		rdev = rocket_device_init(drm_dev, &rocket_drm_driver);
@@ -176,7 +205,7 @@ static int rocket_probe(struct platform_device *pdev)
 
 	rdev->cores[core].rdev = rdev;
 	rdev->cores[core].dev = &pdev->dev;
-	rdev->cores[core].index = core;
+	rdev->cores[core].index = index;
 
 	rdev->num_cores++;
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
