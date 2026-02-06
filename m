Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08997EE20A0
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Feb 2026 13:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=S8wKpLFYmWxB07w4sGKjYft3djeAp4P9Y2q126XR3sg=; b=mBQl84jpmLvWrN
	EwAumq+8A+MhGySrYckj7JmHAeTdu8sG/RTWxoJYdTMoLnDwYu/jAsgTlwnCAI+y53XfK/vOp0ZwG
	1Z/f5T1AkqrXbNVtole8BIwESFx0+Hu4uzAu2l1GaRPHrFtR/dQ/16bZSv2oRkYnyq+5sJGFs4/v1
	21lqp3Eh+/s9YbB0UnMnZ2ckVSMADmZD2BCyeLv+OSrFvQGkftcNJQMpov6tUllfCQJCjZmO7VLsh
	H4/QO5xOQqVFO+MI7v+l8sh2yqq6iOaYU/ScbV4ejMw+85YLdJZ9KOA9uCpo3q1JP7Ao1Tju5aShd
	/DmwCtplEsg7+o2j2a6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voM5R-0000000BNfY-1lsk;
	Fri, 06 Feb 2026 13:41:29 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voM5O-0000000BNeA-2YxV
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Feb 2026 13:41:27 +0000
Received: by mail-wr1-x443.google.com with SMTP id ffacd0b85a97d-43284ed32a0so1401622f8f.3
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Feb 2026 05:41:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770385285; x=1770990085; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LCL1DbowgJz3KhWgEdjSYavXvn767FPhfGqyYV8f3No=;
        b=Ni6Xv+rsQVtfn6dygkXcDxZOrUto0dhQWCzhdG8oJI8lb7MBmFY3Mxs41DhNG9TeTK
         fy9W+/4j/S6auU7kzwmqGaEOnCvJtNbjm1GyjnJ6FRa+pqvlaBoNUWFagj5uQjX0Nk9e
         ekBHZs+vQnT9OPjJ5G49b2CfDjVh6Rq6sZv4bRwg+LpEjFAuZKq5BeT2MBCTzXiw4Wpc
         jZV6YfO0OMyJZwhkeZu2uq33oUuwYq6jCjlz7mDW4oeyR885K70UnrjZnGPoleReWbJv
         j56+T5yuSdcW83zOxRJ0QuWbNmsCVrvJe8yh04V3MhBzbxrJnUseqxjwrLJ0HbGOflW/
         ONbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770385285; x=1770990085;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LCL1DbowgJz3KhWgEdjSYavXvn767FPhfGqyYV8f3No=;
        b=CVLxlT9ag7j6Cf2tkaJI69dQx3Ynfl38OHMx6CyRo8utubBce78q1OiQkrushjvLrA
         9BaXGLwvXgNQqwRDz0VO8vcml2B69HZRA3z7ERbj3+70gxc/NwyDlF5LicghVi8zDzYN
         bun4RYNWl8i7eCkh8FjH9Q5eoJ7tR8Br5VqzOyeh7x/hy+bqwzd8vyCrjjdSbzZHQfTi
         yPhP5hGV4ts+KCOS5w5kfJm5Hz2WLLAkytTsuot8DNiSEZnSfIIAvhfdArFTTC1Iq0hu
         4JgNW+z4RtR0/9bPzOtMmTTmEav69vA6trtmTP9AmDc8cgUi7L48Ow0LZBtq+Sh+mVS8
         QonA==
X-Forwarded-Encrypted: i=1; AJvYcCU5wl7VuU5OveqLjuDmAnkB6+GP78bgB74k3vVRYnyyOZ07mk/tfl6aZlbaHXzkS+WNbkDgr/eiIRSLfgwQwQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyPiHP615sE6uS3N7eJSr3qaUZ7EVbuvvJ2j77nZu8kQFDeAZot
	34mT65zdfc3IIVR8GDw2yAvTj8nqFyBfn89jgLtkJzY9drLlahnLi+Q8i+AtMZrtt/o+ACqhTXK
	6nNg2
X-Gm-Gg: AZuq6aIYca10c8mQYGl57U2nJR4tWBIUtHsP8+f6UtI4c7JbBD2jTDAFepIH1HktAM4
	HhzyOykiyRZ+ez4BB2kJi3GTtIo5wf3l+YFuiW/lUDpIhuEaKW9fNpQxAv0CI69arD0UNcIHUNB
	dNHg6X3dPGl4bVeGl5o7vZUGj5O/t/NxCwwZ/dktv3d/1dQgHVWSKqo5nafRH8QsdzYoW/4pA+j
	3lS29eHWSvGP05NabW8QNUpTYqCfGyJikhIP0CeurS/XbLQZ9UE+fDTp5zXj24f6D5XTRMoairP
	HQKhktZrc9hiBfm6BolgjvZLMXxuXg24JOeps/SAaMapAi2qKO5Axr1BsqNjkWnDVurKno1el9F
	8yFXkNORwRfVmt2GM3kka7TJr+gzlNCDsSms6n1R9OZcjSOMNz+YvyFx8ix0b/K25EQkSkg0jMS
	llpXt5cCEKSqKHwmdF
X-Received: by 2002:a05:6000:240e:b0:431:752:671e with SMTP id ffacd0b85a97d-436293422d4mr4829014f8f.15.1770385284981;
        Fri, 06 Feb 2026 05:41:24 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43629730992sm5455993f8f.21.2026.02.06.05.41.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 05:41:24 -0800 (PST)
Date: Fri, 6 Feb 2026 16:41:21 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel <linux-kernel@vger.kernel.org>
Subject: [bug report] soc: rockchip: grf: Support multiple grf to be handled
Message-ID: <aYXvgTcUJWQL2can@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <caa37f28-a2e8-4e0a-a9ce-a365ce805e4b@stanley.mountain>
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_054126_666531_E40F82BA 
X-CRM114-Status: UNSURE (   7.87  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

[ Smatch checking is paused while we raise funding.  #SadFace
  https://lore.kernel.org/all/aTaiGSbWZ9DJaGo7@stanley.mountain/ -dan ]

Hello Shawn Lin,

Commit 75fb63ae0312 ("soc: rockchip: grf: Support multiple grf to be
handled") from Jan 16, 2026 (linux-next), leads to the following
Smatch static checker warning:

	drivers/soc/rockchip/grf.c:249 rockchip_grf_init()
	warn: inconsistent refcounting 'np->kobj.kref.refcount.refs.counter':

drivers/soc/rockchip/grf.c
   212  static int __init rockchip_grf_init(void)
   213  {
   214          const struct rockchip_grf_info *grf_info;
   215          const struct of_device_id *match;
   216          struct device_node *np;
   217          struct regmap *grf;
   218          int ret, i;
   219  
   220          for_each_matching_node_and_match(np, rockchip_grf_dt_match, &match) {
   221                  if (!of_device_is_available(np))
   222                          continue;
   223                  if (!match || !match->data) {
   224                          pr_err("%s: missing grf data\n", __func__);
   225                          of_node_put(np);
   226                          return -EINVAL;
   227                  }
   228  
   229                  grf_info = match->data;
   230  
   231                  grf = syscon_node_to_regmap(np);
   232                  if (IS_ERR(grf)) {
   233                          pr_err("%s: could not get grf syscon\n", __func__);
   234                          return PTR_ERR(grf);

Missing of_node_put(np) before returning.

   235                  }
   236  
   237                  for (i = 0; i < grf_info->num_values; i++) {
   238                          const struct rockchip_grf_value *val = &grf_info->values[i];
   239  
   240                          pr_debug("%s: adjusting %s in %#6x to %#10x\n", __func__,
   241                                  val->desc, val->reg, val->val);
   242                          ret = regmap_write(grf, val->reg, val->val);
   243                          if (ret < 0)
   244                                  pr_err("%s: write to %#6x failed with %d\n",
   245                                          __func__, val->reg, ret);
   246                  }
   247          }
   248  
   249          return 0;
   250  }

regards,
dan carpenter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
