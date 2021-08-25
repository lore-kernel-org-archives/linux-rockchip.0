Return-Path: <SRS0=zXd4=NQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E9C1C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Aug 2021 03:37:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B9E0E61058
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Aug 2021 03:37:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B9E0E61058
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f5uqcArbZYUKtOrT2EAnCZkVsWrHMwOtK1s8GAJFJ34=; b=zUMESvvcThFuEg
	fsTgL6sps1rUot8BLKDnlOUnZuAr0BQS7OV+us50SdJijuVSXsswcI7g9h3VeDtLn+Lp6Gebqft6R
	tLUrNo81SFUiGgprsHYTY2fZznKsLlMmWZKUtI8sK0lUWCgiXnqfg6EaAHZkuk72MCHfFWbTHJ4ad
	101AMU7uTJktsEM14yE51bS4xTGUmLRs+L++nQ0CnWOjNSfipcRP0HK6aMAOip2GShkcw38jJEVuZ
	ZE2BP9wyVhXuLctQycHq37NliFGYlX+y7Y01Hhz39S99aB4TA3A7LVnxlO8SowadokppKoMy0POkw
	oJjtlfXx/tsEFdi2Sezg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIjjc-005Mjr-39; Wed, 25 Aug 2021 03:37:52 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIjjC-005Mei-4e
 for linux-rockchip@lists.infradead.org; Wed, 25 Aug 2021 03:37:32 +0000
Received: by mail-pj1-x102d.google.com with SMTP id h1so9791822pjs.2
 for <linux-rockchip@lists.infradead.org>; Tue, 24 Aug 2021 20:37:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q0osrLQRGYm4Vz0vBnUh204LWkZlcWqm9+4G0jRh2r4=;
 b=cm+7OY5PrUzXxQzmgUzHVcJpuqhuCN96Etlchoc8KlOZeRCnpO/BZBJWl4OXQGWW9z
 /WfKuqN2SN96zaSJ2EV3ZYQ/zvC12oZKbrUiS1lbm/+YCJVtesKujD0roCKuF5H3jIK4
 XMONAvB05LsDiQ11+NSdwGfFdqTs01YFUTAbE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q0osrLQRGYm4Vz0vBnUh204LWkZlcWqm9+4G0jRh2r4=;
 b=rOonR4UPqid12ctUeUyRNWjieDLjkbcooTUfwA2edUw66EAign9COIFBuLBMAIAV4k
 rh8yGtlFj/GM1doFUAHVB9QkUZ7EQTxa/34kvukHedqfBVoEYcbyDEUlKQSzLNkKscFI
 Zf1lAiDY1qhXOC3YuEGuaHv4SfU/Ni425rz4heSt+z25mHpZBYRMoRhADoOS93cDkfWC
 NMaEpJw1IW5K6bGGeOsRN0e2lTxM4K1Dz/8cr9bGWM7AtwrtowvCzEgFJYJMZkpsyvzf
 QjC+QKYRncf00MbgR/3RJ7VgzKVqb0Qhnv7rHcZVc3tQ4mPBnJxOIuJY+MElEBwfC75b
 kfYQ==
X-Gm-Message-State: AOAM532A1wt5x4Iv0QKOUyLk9jX6xgUcfSQi7kFXnkz7d3UwL/uOhr3P
 HnvcBcGGYxoAzRbs8eN22X0TeLkH7FO31w==
X-Google-Smtp-Source: ABdhPJzZpuaw15dsq6mbPtNWoaGiH5OE3VTghxOEKzbAliLMD+KN8Yx/HkuuY0QD5o3g/NSTT/Q7jg==
X-Received: by 2002:a17:90b:33d1:: with SMTP id
 lk17mr8081418pjb.83.1629862645563; 
 Tue, 24 Aug 2021 20:37:25 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:629f:4b05:2c88:776d])
 by smtp.gmail.com with ESMTPSA id l10sm3902149pgn.22.2021.08.24.20.37.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Aug 2021 20:37:25 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>, Brian Norris <briannorris@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] regulator: vctrl: Avoid lockdep warning in enable/disable
 ops
Date: Wed, 25 Aug 2021 11:37:04 +0800
Message-Id: <20210825033704.3307263-3-wenst@chromium.org>
X-Mailer: git-send-email 2.33.0.rc2.250.ged5fa647cd-goog
In-Reply-To: <20210825033704.3307263-1-wenst@chromium.org>
References: <20210825033704.3307263-1-wenst@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_203726_236033_61EFFB96 
X-CRM114-Status: GOOD (  22.10  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

vctrl_enable() and vctrl_disable() call regulator_enable() and
regulator_disable(), respectively. However, vctrl_* are regulator ops
and should not be calling the locked regulator APIs. Doing so results in
a lockdep warning.

Instead of exporting more internal regulator ops, model the ctrl supply
as an actual supply to vctrl-regulator. At probe time this driver still
needs to use the consumer API to fetch its constraints, but otherwise
lets the regulator core handle the upstream supply for it.

The enable/disable/is_enabled ops are not removed, but now only track
state internally. This preserves the original behavior with the ops
being available, but one could argue that the original behavior was
already incorrect: the internal state would not match the upstream
supply if that supply had another consumer that enabled the supply,
while vctrl-regulator was not enabled.

The lockdep warning is as follows:

	WARNING: possible circular locking dependency detected
	5.14.0-rc6 #2 Not tainted
	------------------------------------------------------
	swapper/0/1 is trying to acquire lock:
	ffffffc011306d00 (regulator_list_mutex){+.+.}-{3:3}, at:
		regulator_lock_dependent (arch/arm64/include/asm/current.h:19
					  include/linux/ww_mutex.h:111
					  drivers/regulator/core.c:329)

	but task is already holding lock:
	ffffff8004a77160 (regulator_ww_class_mutex){+.+.}-{3:3}, at:
		regulator_lock_recursive (drivers/regulator/core.c:156
					  drivers/regulator/core.c:263)

	which lock already depends on the new lock.

	the existing dependency chain (in reverse order) is:

	-> #2 (regulator_ww_class_mutex){+.+.}-{3:3}:
	__mutex_lock_common (include/asm-generic/atomic-instrumented.h:606
			     include/asm-generic/atomic-long.h:29
			     kernel/locking/mutex.c:103
			     kernel/locking/mutex.c:144
			     kernel/locking/mutex.c:963)
	ww_mutex_lock (kernel/locking/mutex.c:1199)
	regulator_lock_recursive (drivers/regulator/core.c:156
				  drivers/regulator/core.c:263)
	regulator_lock_dependent (drivers/regulator/core.c:343)
	regulator_enable (drivers/regulator/core.c:2808)
	set_machine_constraints (drivers/regulator/core.c:1536)
	regulator_register (drivers/regulator/core.c:5486)
	devm_regulator_register (drivers/regulator/devres.c:196)
	reg_fixed_voltage_probe (drivers/regulator/fixed.c:289)
	platform_probe (drivers/base/platform.c:1427)
	[...]

	-> #1 (regulator_ww_class_acquire){+.+.}-{0:0}:
	regulator_lock_dependent (include/linux/ww_mutex.h:129
				  drivers/regulator/core.c:329)
	regulator_enable (drivers/regulator/core.c:2808)
	set_machine_constraints (drivers/regulator/core.c:1536)
	regulator_register (drivers/regulator/core.c:5486)
	devm_regulator_register (drivers/regulator/devres.c:196)
	reg_fixed_voltage_probe (drivers/regulator/fixed.c:289)
	[...]

	-> #0 (regulator_list_mutex){+.+.}-{3:3}:
	__lock_acquire (kernel/locking/lockdep.c:3052 (discriminator 4)
			kernel/locking/lockdep.c:3174 (discriminator 4)
			kernel/locking/lockdep.c:3789 (discriminator 4)
			kernel/locking/lockdep.c:5015 (discriminator 4))
	lock_acquire (arch/arm64/include/asm/percpu.h:39
		      kernel/locking/lockdep.c:438
		      kernel/locking/lockdep.c:5627)
	__mutex_lock_common (include/asm-generic/atomic-instrumented.h:606
			     include/asm-generic/atomic-long.h:29
			     kernel/locking/mutex.c:103
			     kernel/locking/mutex.c:144
			     kernel/locking/mutex.c:963)
	mutex_lock_nested (kernel/locking/mutex.c:1125)
	regulator_lock_dependent (arch/arm64/include/asm/current.h:19
				  include/linux/ww_mutex.h:111
				  drivers/regulator/core.c:329)
	regulator_enable (drivers/regulator/core.c:2808)
	vctrl_enable (drivers/regulator/vctrl-regulator.c:400)
	_regulator_do_enable (drivers/regulator/core.c:2617)
	_regulator_enable (drivers/regulator/core.c:2764)
	regulator_enable (drivers/regulator/core.c:308
			  drivers/regulator/core.c:2809)
	_set_opp (drivers/opp/core.c:819 drivers/opp/core.c:1072)
	dev_pm_opp_set_rate (drivers/opp/core.c:1164)
	set_target (drivers/cpufreq/cpufreq-dt.c:62)
	__cpufreq_driver_target (drivers/cpufreq/cpufreq.c:2216
				 drivers/cpufreq/cpufreq.c:2271)
	cpufreq_online (drivers/cpufreq/cpufreq.c:1488 (discriminator 2))
	cpufreq_add_dev (drivers/cpufreq/cpufreq.c:1563)
	subsys_interface_register (drivers/base/bus.c:?)
	cpufreq_register_driver (drivers/cpufreq/cpufreq.c:2819)
	dt_cpufreq_probe (drivers/cpufreq/cpufreq-dt.c:344)
	[...]

	other info that might help us debug this:

	Chain exists of:
	  regulator_list_mutex --> regulator_ww_class_acquire --> regulator_ww_class_mutex

	 Possible unsafe locking scenario:

	       CPU0                    CPU1
	       ----                    ----
	  lock(regulator_ww_class_mutex);
				       lock(regulator_ww_class_acquire);
				       lock(regulator_ww_class_mutex);
	  lock(regulator_list_mutex);

	 *** DEADLOCK ***

	6 locks held by swapper/0/1:
	#0: ffffff8002d32188 (&dev->mutex){....}-{3:3}, at:
		__device_driver_lock (drivers/base/dd.c:1030)
	#1: ffffffc0111a0520 (cpu_hotplug_lock){++++}-{0:0}, at:
		cpufreq_register_driver (drivers/cpufreq/cpufreq.c:2792 (discriminator 2))
	#2: ffffff8002a8d918 (subsys mutex#9){+.+.}-{3:3}, at:
		subsys_interface_register (drivers/base/bus.c:1033)
	#3: ffffff800341bb90 (&policy->rwsem){+.+.}-{3:3}, at:
		cpufreq_online (include/linux/bitmap.h:285
				include/linux/cpumask.h:405
				drivers/cpufreq/cpufreq.c:1399)
	#4: ffffffc011f0b7b8 (regulator_ww_class_acquire){+.+.}-{0:0}, at:
		regulator_enable (drivers/regulator/core.c:2808)
	#5: ffffff8004a77160 (regulator_ww_class_mutex){+.+.}-{3:3}, at:
		regulator_lock_recursive (drivers/regulator/core.c:156
		drivers/regulator/core.c:263)

	stack backtrace:
	CPU: 1 PID: 1 Comm: swapper/0 Not tainted 5.14.0-rc6 #2 7c8f8996d021ed0f65271e6aeebf7999de74a9fa
	Hardware name: Google Scarlet (DT)
	Call trace:
	dump_backtrace (arch/arm64/kernel/stacktrace.c:161)
	show_stack (arch/arm64/kernel/stacktrace.c:218)
	dump_stack_lvl (lib/dump_stack.c:106 (discriminator 2))
	dump_stack (lib/dump_stack.c:113)
	print_circular_bug (kernel/locking/lockdep.c:?)
	check_noncircular (kernel/locking/lockdep.c:?)
	__lock_acquire (kernel/locking/lockdep.c:3052 (discriminator 4)
			kernel/locking/lockdep.c:3174 (discriminator 4)
			kernel/locking/lockdep.c:3789 (discriminator 4)
			kernel/locking/lockdep.c:5015 (discriminator 4))
	lock_acquire (arch/arm64/include/asm/percpu.h:39
		      kernel/locking/lockdep.c:438
		      kernel/locking/lockdep.c:5627)
	__mutex_lock_common (include/asm-generic/atomic-instrumented.h:606
			     include/asm-generic/atomic-long.h:29
			     kernel/locking/mutex.c:103
			     kernel/locking/mutex.c:144
			     kernel/locking/mutex.c:963)
	mutex_lock_nested (kernel/locking/mutex.c:1125)
	regulator_lock_dependent (arch/arm64/include/asm/current.h:19
				  include/linux/ww_mutex.h:111
				  drivers/regulator/core.c:329)
	regulator_enable (drivers/regulator/core.c:2808)
	vctrl_enable (drivers/regulator/vctrl-regulator.c:400)
	_regulator_do_enable (drivers/regulator/core.c:2617)
	_regulator_enable (drivers/regulator/core.c:2764)
	regulator_enable (drivers/regulator/core.c:308
			  drivers/regulator/core.c:2809)
	_set_opp (drivers/opp/core.c:819 drivers/opp/core.c:1072)
	dev_pm_opp_set_rate (drivers/opp/core.c:1164)
	set_target (drivers/cpufreq/cpufreq-dt.c:62)
	__cpufreq_driver_target (drivers/cpufreq/cpufreq.c:2216
				 drivers/cpufreq/cpufreq.c:2271)
	cpufreq_online (drivers/cpufreq/cpufreq.c:1488 (discriminator 2))
	cpufreq_add_dev (drivers/cpufreq/cpufreq.c:1563)
	subsys_interface_register (drivers/base/bus.c:?)
	cpufreq_register_driver (drivers/cpufreq/cpufreq.c:2819)
	dt_cpufreq_probe (drivers/cpufreq/cpufreq-dt.c:344)
	[...]

Reported-by: Brian Norris <briannorris@chromium.org>
Fixes: f8702f9e4aa7 ("regulator: core: Use ww_mutex for regulators locking")
Fixes: e9153311491d ("regulator: vctrl-regulator: Avoid deadlock getting and setting the voltage")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---

Mark,

checkpatch.pl gives a few style check issues about parenthesis alighment
around regulator_set_voltage_rdev() invocations, which were the result of
the previous switch over from regulator_set_voltage() to
regulator_set_voltage_rdev().

Not sure if you want those fixed up in the same patch, or maybe in a
followup one?

---
 drivers/regulator/vctrl-regulator.c | 72 +++++++++++++++++------------
 1 file changed, 42 insertions(+), 30 deletions(-)

diff --git a/drivers/regulator/vctrl-regulator.c b/drivers/regulator/vctrl-regulator.c
index 93d33201ffe0..d2a37978fc3a 100644
--- a/drivers/regulator/vctrl-regulator.c
+++ b/drivers/regulator/vctrl-regulator.c
@@ -37,7 +37,6 @@ struct vctrl_voltage_table {
 struct vctrl_data {
 	struct regulator_dev *rdev;
 	struct regulator_desc desc;
-	struct regulator *ctrl_reg;
 	bool enabled;
 	unsigned int min_slew_down_rate;
 	unsigned int ovp_threshold;
@@ -82,7 +81,12 @@ static int vctrl_calc_output_voltage(struct vctrl_data *vctrl, int ctrl_uV)
 static int vctrl_get_voltage(struct regulator_dev *rdev)
 {
 	struct vctrl_data *vctrl = rdev_get_drvdata(rdev);
-	int ctrl_uV = regulator_get_voltage_rdev(vctrl->ctrl_reg->rdev);
+	int ctrl_uV;
+
+	if (!rdev->supply)
+		return -EPROBE_DEFER;
+
+	ctrl_uV = regulator_get_voltage_rdev(rdev->supply->rdev);
 
 	return vctrl_calc_output_voltage(vctrl, ctrl_uV);
 }
@@ -92,14 +96,19 @@ static int vctrl_set_voltage(struct regulator_dev *rdev,
 			     unsigned int *selector)
 {
 	struct vctrl_data *vctrl = rdev_get_drvdata(rdev);
-	struct regulator *ctrl_reg = vctrl->ctrl_reg;
-	int orig_ctrl_uV = regulator_get_voltage_rdev(ctrl_reg->rdev);
-	int uV = vctrl_calc_output_voltage(vctrl, orig_ctrl_uV);
+	int orig_ctrl_uV;
+	int uV;
 	int ret;
 
+	if (!rdev->supply)
+		return -EPROBE_DEFER;
+
+	orig_ctrl_uV = regulator_get_voltage_rdev(rdev->supply->rdev);
+	uV = vctrl_calc_output_voltage(vctrl, orig_ctrl_uV);
+
 	if (req_min_uV >= uV || !vctrl->ovp_threshold)
 		/* voltage rising or no OVP */
-		return regulator_set_voltage_rdev(ctrl_reg->rdev,
+		return regulator_set_voltage_rdev(rdev->supply->rdev,
 			vctrl_calc_ctrl_voltage(vctrl, req_min_uV),
 			vctrl_calc_ctrl_voltage(vctrl, req_max_uV),
 			PM_SUSPEND_ON);
@@ -117,7 +126,7 @@ static int vctrl_set_voltage(struct regulator_dev *rdev,
 		next_uV = max_t(int, req_min_uV, uV - max_drop_uV);
 		next_ctrl_uV = vctrl_calc_ctrl_voltage(vctrl, next_uV);
 
-		ret = regulator_set_voltage_rdev(ctrl_reg->rdev,
+		ret = regulator_set_voltage_rdev(rdev->supply->rdev,
 					    next_ctrl_uV,
 					    next_ctrl_uV,
 					    PM_SUSPEND_ON);
@@ -134,7 +143,7 @@ static int vctrl_set_voltage(struct regulator_dev *rdev,
 
 err:
 	/* Try to go back to original voltage */
-	regulator_set_voltage_rdev(ctrl_reg->rdev, orig_ctrl_uV, orig_ctrl_uV,
+	regulator_set_voltage_rdev(rdev->supply->rdev, orig_ctrl_uV, orig_ctrl_uV,
 				   PM_SUSPEND_ON);
 
 	return ret;
@@ -151,16 +160,18 @@ static int vctrl_set_voltage_sel(struct regulator_dev *rdev,
 				 unsigned int selector)
 {
 	struct vctrl_data *vctrl = rdev_get_drvdata(rdev);
-	struct regulator *ctrl_reg = vctrl->ctrl_reg;
 	unsigned int orig_sel = vctrl->sel;
 	int ret;
 
+	if (!rdev->supply)
+		return -EPROBE_DEFER;
+
 	if (selector >= rdev->desc->n_voltages)
 		return -EINVAL;
 
 	if (selector >= vctrl->sel || !vctrl->ovp_threshold) {
 		/* voltage rising or no OVP */
-		ret = regulator_set_voltage_rdev(ctrl_reg->rdev,
+		ret = regulator_set_voltage_rdev(rdev->supply->rdev,
 					    vctrl->vtable[selector].ctrl,
 					    vctrl->vtable[selector].ctrl,
 					    PM_SUSPEND_ON);
@@ -179,7 +190,7 @@ static int vctrl_set_voltage_sel(struct regulator_dev *rdev,
 		else
 			next_sel = vctrl->vtable[vctrl->sel].ovp_min_sel;
 
-		ret = regulator_set_voltage_rdev(ctrl_reg->rdev,
+		ret = regulator_set_voltage_rdev(rdev->supply->rdev,
 					    vctrl->vtable[next_sel].ctrl,
 					    vctrl->vtable[next_sel].ctrl,
 					    PM_SUSPEND_ON);
@@ -202,7 +213,7 @@ static int vctrl_set_voltage_sel(struct regulator_dev *rdev,
 err:
 	if (vctrl->sel != orig_sel) {
 		/* Try to go back to original voltage */
-		if (!regulator_set_voltage_rdev(ctrl_reg->rdev,
+		if (!regulator_set_voltage_rdev(rdev->supply->rdev,
 					   vctrl->vtable[orig_sel].ctrl,
 					   vctrl->vtable[orig_sel].ctrl,
 					   PM_SUSPEND_ON))
@@ -234,10 +245,6 @@ static int vctrl_parse_dt(struct platform_device *pdev,
 	u32 pval;
 	u32 vrange_ctrl[2];
 
-	vctrl->ctrl_reg = devm_regulator_get(&pdev->dev, "ctrl");
-	if (IS_ERR(vctrl->ctrl_reg))
-		return PTR_ERR(vctrl->ctrl_reg);
-
 	ret = of_property_read_u32(np, "ovp-threshold-percent", &pval);
 	if (!ret) {
 		vctrl->ovp_threshold = pval;
@@ -315,11 +322,11 @@ static int vctrl_cmp_ctrl_uV(const void *a, const void *b)
 	return at->ctrl - bt->ctrl;
 }
 
-static int vctrl_init_vtable(struct platform_device *pdev)
+static int vctrl_init_vtable(struct platform_device *pdev,
+			     struct regulator *ctrl_reg)
 {
 	struct vctrl_data *vctrl = platform_get_drvdata(pdev);
 	struct regulator_desc *rdesc = &vctrl->desc;
-	struct regulator *ctrl_reg = vctrl->ctrl_reg;
 	struct vctrl_voltage_range *vrange_ctrl = &vctrl->vrange.ctrl;
 	int n_voltages;
 	int ctrl_uV;
@@ -395,23 +402,19 @@ static int vctrl_init_vtable(struct platform_device *pdev)
 static int vctrl_enable(struct regulator_dev *rdev)
 {
 	struct vctrl_data *vctrl = rdev_get_drvdata(rdev);
-	int ret = regulator_enable(vctrl->ctrl_reg);
 
-	if (!ret)
-		vctrl->enabled = true;
+	vctrl->enabled = true;
 
-	return ret;
+	return 0;
 }
 
 static int vctrl_disable(struct regulator_dev *rdev)
 {
 	struct vctrl_data *vctrl = rdev_get_drvdata(rdev);
-	int ret = regulator_disable(vctrl->ctrl_reg);
 
-	if (!ret)
-		vctrl->enabled = false;
+	vctrl->enabled = false;
 
-	return ret;
+	return 0;
 }
 
 static int vctrl_is_enabled(struct regulator_dev *rdev)
@@ -447,6 +450,7 @@ static int vctrl_probe(struct platform_device *pdev)
 	struct regulator_desc *rdesc;
 	struct regulator_config cfg = { };
 	struct vctrl_voltage_range *vrange_ctrl;
+	struct regulator *ctrl_reg;
 	int ctrl_uV;
 	int ret;
 
@@ -461,15 +465,20 @@ static int vctrl_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	ctrl_reg = devm_regulator_get(&pdev->dev, "ctrl");
+	if (IS_ERR(ctrl_reg))
+		return PTR_ERR(ctrl_reg);
+
 	vrange_ctrl = &vctrl->vrange.ctrl;
 
 	rdesc = &vctrl->desc;
 	rdesc->name = "vctrl";
 	rdesc->type = REGULATOR_VOLTAGE;
 	rdesc->owner = THIS_MODULE;
+	rdesc->supply_name = "ctrl";
 
-	if ((regulator_get_linear_step(vctrl->ctrl_reg) == 1) ||
-	    (regulator_count_voltages(vctrl->ctrl_reg) == -EINVAL)) {
+	if ((regulator_get_linear_step(ctrl_reg) == 1) ||
+	    (regulator_count_voltages(ctrl_reg) == -EINVAL)) {
 		rdesc->continuous_voltage_range = true;
 		rdesc->ops = &vctrl_ops_cont;
 	} else {
@@ -486,12 +495,12 @@ static int vctrl_probe(struct platform_device *pdev)
 	cfg.init_data = init_data;
 
 	if (!rdesc->continuous_voltage_range) {
-		ret = vctrl_init_vtable(pdev);
+		ret = vctrl_init_vtable(pdev, ctrl_reg);
 		if (ret)
 			return ret;
 
 		/* Use locked consumer API when not in regulator framework */
-		ctrl_uV = regulator_get_voltage(vctrl->ctrl_reg);
+		ctrl_uV = regulator_get_voltage(ctrl_reg);
 		if (ctrl_uV < 0) {
 			dev_err(&pdev->dev, "failed to get control voltage\n");
 			return ctrl_uV;
@@ -514,6 +523,9 @@ static int vctrl_probe(struct platform_device *pdev)
 		}
 	}
 
+	/* Drop ctrl-supply here in favor of regulator core managed supply */
+	devm_regulator_put(ctrl_reg);
+
 	vctrl->rdev = devm_regulator_register(&pdev->dev, rdesc, &cfg);
 	if (IS_ERR(vctrl->rdev)) {
 		ret = PTR_ERR(vctrl->rdev);
-- 
2.33.0.rc2.250.ged5fa647cd-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
