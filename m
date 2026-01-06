Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24D7FC47BC4
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jan 2026 09:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AyRsCIUv5KU/XUZUiSY4uZw62UcXy4s0Tqu2LBwqmdY=; b=Y1wl+yRBZz3uc5
	JGgdvFAILUlrDlpP8MeMP6tA0Z8wihe1uJwUWmt70gmISS3UpCEkzHR9BEVQYIiqiJL1xcUWHM4D8
	+ec6RWOyNK+kdPZ2ysLnSNmsYmGDoLckAJWS0AD9b4o4iKjggPbsOmQPTufQEDeFn+50Ata0IHbbG
	GMRDNa6XfCSq9vv4yBvwiEql3o++fF9b2UR4u7BbZSAi6xtYYiheyW4vZXYG0EhoMxGBGTfHOqAAy
	wXtt8WwlcUVGqrk/E09CM6iBgbmqldDCzEB6XajNqgDMxY6LR/2WWdFy0U2g3pEUG/sOAWZrGUGIF
	OsMJNqr3aDYqbSZL/LGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd2vO-0000000Cevd-0a0M;
	Tue, 06 Jan 2026 09:00:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd2vM-0000000Ceuv-1KAV
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Jan 2026 09:00:21 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6066t2gj3294939
	for <linux-rockchip@lists.infradead.org>; Tue, 6 Jan 2026 09:00:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=zUmJx583wbIqbI/LnTq2qTUX5b+XpJNoiwx
	n1/rffoo=; b=dJnxGMIAyzB4PbZ6MmAJk5BnLsOhqj3GNT0QhtWZwCRCaqKJRyo
	6gq39vnXnOoszTprusZdSQL7N/GxoWO5RS9W5SnB2Z9bxmRCpjhCoC9moTOqLTr6
	Fe2SeWLCLC4YJ02HHKQZAmM1d3akRT4yENG52WyILRPHnGuOwmnTbyiMAmNiUD7j
	ieO4CHSTVkN358A4ndSushtRNHzpfeV2LqwAvWZQB1/6ejtK+iUYwPu6UCD7CNyQ
	br1CenYNR/qi9jiaduj5bezt5X6D66XZmWNnEbWiKkciWL7JMa82Li/zAFek3qMV
	BEIbxe3e8DaH/hDao5i2C070EB0MFnYmgyQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgwj00bvx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 06 Jan 2026 09:00:19 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f4a92bf359so20420471cf.2
        for <linux-rockchip@lists.infradead.org>; Tue, 06 Jan 2026 01:00:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767690018; x=1768294818; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zUmJx583wbIqbI/LnTq2qTUX5b+XpJNoiwxn1/rffoo=;
        b=doHzxTMDRVRkBHQDh20QVGUMbWMWaPlsUZ/1L0z4r2JJ7U22HqR34PlvGBQGxPXUZa
         CGXPlBiIIxIOPV9EDblk8NQhhHmNTtvqpNoiZgqriTLqbpSEN6bzR5egDi3CEiJDM1YT
         M+RO9+C12FcSu3AdXWDfjClmGAJqCA6pY/4VY+x+SuY65uDzq9gSx2mxlymPKzgWIj38
         Vg4jmvv2Lv61Re2Zi77lZPiIhWNvUmWQPr40fVxT1gvTy8J5gXE2PEhIpYLRfO1RbN00
         9koANh16qkO6d5Aiaz3wBdiFepg4MH+N9FIegnOLSOF0bbz/zPrYtbAxYU31mK1kausi
         N/tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767690018; x=1768294818;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zUmJx583wbIqbI/LnTq2qTUX5b+XpJNoiwxn1/rffoo=;
        b=kynn9NlRRijjuYhr5pjHu5im6EAJFocCIMEAvG+muqqKBTux5vCGguq5N0RIy5SudO
         +uBYcQvCPsOX4WDH18d35aeF0zrBLcCZtILndZ4o8u1sYnYsJQFc8gm2NF31juL5uYkX
         aGk9Uf2LsUXBkQLD3ZzZn/e5uq8axUorbSJLWebAkzm/5Azyq86moR/6sRXZ9SymYXcb
         kU3x/nU8zMVJODl8ZDXA5XG2kZIWOfXmDFsiPtMhJQi3N8l78tNQqV2mqoweWi4HchH1
         ms9b0oYTbZZwf5+1Kljc737e37yZjQx0PH3Y/BqN5RE5JYLVtdqnHcF99aUHRditRera
         tdEw==
X-Forwarded-Encrypted: i=1; AJvYcCWS+zWWA4XwI7yGDGA7xQ47dOfxHWyr61H/DE8Aa4U5bCIvdUcguu/V4GoF7gQ0+Ii2fuY4agxSbdXmzycrVg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3+aDlWc3j892Z/HTc+IsjwnM7qP+cdTugNjgbDfgsIPK9i5Yi
	8Gkf8CtNEsOrk9ZZ3SlmAKcOidA68XJGhWzppwGzFS2nbNVFp5MgZW/vk2r38GUVO//OrJarBVD
	DOKHvxvxTPacsE47COn1cPDdGDrXO628u+94mtfYPyYqcuNTIvXBvvle6LruvvxgjzaVNevfRYS
	Y=
X-Gm-Gg: AY/fxX7nUNzJ4TRzGJuETUMqjIDO7KogntRLs/nI+6WgsYqHBFymxoKN8n1d/2Qenb3
	+pmAbY0DnvtCoPCmUkwhJ5z+RQkaVqqEWiGa+fspF9iKd7pp8NbuoGReya1AUoxudAnVzuSuKy+
	Ln6IQntiTJQrcfkpe4Vg7o5NYahmvB4F8pHZW2rZLnIq68phHizoH9jYYu8Wght5m8eSNyL2JdM
	214N0aDLlvr5Q6bB8LLKNlRYPHW2ICmkKC+Kf0m35aIbWfNEAZg6ep99yZc+AErJMBteI2g39Gf
	1FYA7T4B8HxwHnsyAr4JqbXl7huoBdgubjPzbfOBhAP6egzinCqZsNCohS8v3rgcmNJxqzWBjwf
	Xn3xKOYxLCBri5Xt5jRbhp3bKu8jG+SNqa/jVM34=
X-Received: by 2002:a05:622a:4d98:b0:4f1:b398:551f with SMTP id d75a77b69052e-4ffa77f6136mr26639831cf.68.1767690018465;
        Tue, 06 Jan 2026 01:00:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHiDIRIh0uRsi01LsmTGYlRfJRiytQ0H19Dw+EIaGym4rEAY4QFPoKpFGj+0y75JD3JHMf/gg==
X-Received: by 2002:a05:622a:4d98:b0:4f1:b398:551f with SMTP id d75a77b69052e-4ffa77f6136mr26639491cf.68.1767690018029;
        Tue, 06 Jan 2026 01:00:18 -0800 (PST)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:a1e5:bc32:d004:3d67])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ff319sm3196825f8f.43.2026.01.06.01.00.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 01:00:17 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        stable@vger.kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>
Subject: [PATCH] gpio: rockchip: mark the GPIO controller as sleeping
Date: Tue,  6 Jan 2026 10:00:11 +0100
Message-ID: <20260106090011.21603-1-bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA3NiBTYWx0ZWRfX4pKV4aNZYzEu
 FLJcZMse2WWksTXIZlBkH4lDm+O3WC8bOtibA6S34X2reSLpWL6NWmyqdvLB4Ns7OOdOQmHjT3X
 +1V8+R9VWZoRRt0KuNLSzZn/3k0WrhSMDWo2SZvr1To1+b/U5uQa0TwpKi9PrG4iKG/nwxzt01X
 +w4+ateE2NJQL0xazGvACfMBMOnOUg9iQWyF/1eTMuNhwgm/pOg68n9G66jyNroK/GMv0g4xqfO
 D3wrV9v2ZJx50AL1mvj8va1zVh722o6FrOoKUTq6wPCNygmvebTKamPEIBM/wHaSh8nH2w9KYEf
 DaU6WiOc3AXVMil4B1QXJVvdJrapBeX8h3KyE5RMUpNt+OMMIWZOS3Ylntfl4yEMfUkXbY2KXWA
 RnHBnDydTyMQQxR/0vC2zfyvXthLhJk2uEJJM4snmZYDa4mh3WJ22DfTZRQhziFS3s/QsQ8IMlD
 Qe5jLdgh2NoRciE7UgA==
X-Authority-Analysis: v=2.4 cv=bdBmkePB c=1 sm=1 tr=0 ts=695ccf23 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=hD80L64hAAAA:8
 a=EUspDBNiAAAA:8 a=-jpIsuwBRm6Qzzl2v0IA:9 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: _QZcn5nNTQWVXQZrSk7LdddVEog1mO1x
X-Proofpoint-GUID: _QZcn5nNTQWVXQZrSk7LdddVEog1mO1x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 clxscore=1015 phishscore=0
 spamscore=0 suspectscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060076
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_010020_387615_D880CEED 
X-CRM114-Status: GOOD (  13.72  )
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

The GPIO controller is configured as non-sleeping but it uses generic
pinctrl helpers which use a mutex for synchronization.

This can cause the following lockdep splat with shared GPIOs enabled on
boards which have multiple devices using the same GPIO:

BUG: sleeping function called from invalid context at
kernel/locking/mutex.c:591
in_atomic(): 1, irqs_disabled(): 1, non_block: 0, pid: 12, name:
kworker/u16:0
preempt_count: 1, expected: 0
RCU nest depth: 0, expected: 0
6 locks held by kworker/u16:0/12:
  #0: ffff0001f0018d48 ((wq_completion)events_unbound#2){+.+.}-{0:0},
at: process_one_work+0x18c/0x604
  #1: ffff8000842dbdf0 (deferred_probe_work){+.+.}-{0:0}, at:
process_one_work+0x1b4/0x604
  #2: ffff0001f18498f8 (&dev->mutex){....}-{4:4}, at:
__device_attach+0x38/0x1b0
  #3: ffff0001f75f1e90 (&gdev->srcu){.+.?}-{0:0}, at:
gpiod_direction_output_raw_commit+0x0/0x360
  #4: ffff0001f46e3db8 (&shared_desc->spinlock){....}-{3:3}, at:
gpio_shared_proxy_direction_output+0xd0/0x144 [gpio_shared_proxy]
  #5: ffff0001f180ee90 (&gdev->srcu){.+.?}-{0:0}, at:
gpiod_direction_output_raw_commit+0x0/0x360
irq event stamp: 81450
hardirqs last  enabled at (81449): [<ffff8000813acba4>]
_raw_spin_unlock_irqrestore+0x74/0x78
hardirqs last disabled at (81450): [<ffff8000813abfb8>]
_raw_spin_lock_irqsave+0x84/0x88
softirqs last  enabled at (79616): [<ffff8000811455fc>]
__alloc_skb+0x17c/0x1e8
softirqs last disabled at (79614): [<ffff8000811455fc>]
__alloc_skb+0x17c/0x1e8
CPU: 2 UID: 0 PID: 12 Comm: kworker/u16:0 Not tainted
6.19.0-rc4-next-20260105+ #11975 PREEMPT
Hardware name: Hardkernel ODROID-M1 (DT)
Workqueue: events_unbound deferred_probe_work_func
Call trace:
  show_stack+0x18/0x24 (C)
  dump_stack_lvl+0x90/0xd0
  dump_stack+0x18/0x24
  __might_resched+0x144/0x248
  __might_sleep+0x48/0x98
  __mutex_lock+0x5c/0x894
  mutex_lock_nested+0x24/0x30
  pinctrl_get_device_gpio_range+0x44/0x128
  pinctrl_gpio_direction+0x3c/0xe0
  pinctrl_gpio_direction_output+0x14/0x20
  rockchip_gpio_direction_output+0xb8/0x19c
  gpiochip_direction_output+0x38/0x94
  gpiod_direction_output_raw_commit+0x1d8/0x360
  gpiod_direction_output_nonotify+0x7c/0x230
  gpiod_direction_output+0x34/0xf8
  gpio_shared_proxy_direction_output+0xec/0x144 [gpio_shared_proxy]
  gpiochip_direction_output+0x38/0x94
  gpiod_direction_output_raw_commit+0x1d8/0x360
  gpiod_direction_output_nonotify+0x7c/0x230
  gpiod_configure_flags+0xbc/0x480
  gpiod_find_and_request+0x1a0/0x574
  gpiod_get_index+0x58/0x84
  devm_gpiod_get_index+0x20/0xb4
  devm_gpiod_get_optional+0x18/0x30
  rockchip_pcie_probe+0x98/0x380
  platform_probe+0x5c/0xac
  really_probe+0xbc/0x298

Fixes: 936ee2675eee ("gpio/rockchip: add driver for rockchip gpio")
Cc: stable@vger.kernel.org
Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
Closes: https://lore.kernel.org/all/d035fc29-3b03-4cd6-b8ec-001f93540bc6@samsung.com/
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/gpio/gpio-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 47174eb3ba76..bae2061f15fc 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -593,6 +593,7 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
 	gc->ngpio = bank->nr_pins;
 	gc->label = bank->name;
 	gc->parent = bank->dev;
+	gc->can_sleep = true;
 
 	ret = gpiochip_add_data(gc, bank);
 	if (ret) {
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
