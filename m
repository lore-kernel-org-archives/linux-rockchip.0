Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18473606A334
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 16:17:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AyPuyn4b;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=SmXFyTTp;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=bhwk00LZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=xJqWdps00Nyfb2oghIPp0rIsVn3QQVsMnddIrXTHJCY=; b=AyPuyn4bU0NdrghMa0qxiA2aAE
	O9qC8uEx6bCXjKcRgr6GwR7CNozZS/880kidK1YTWjvg29iojbkJsCplEcAqq29mUw8c4XDaCqJlS
	t/QZ5zn1bu2YlIClnLJr2QLnucwI16Grqlsr59gMDzFeOmNdonBIDNo19GFPF7eA/S08A3tVyXuzr
	H8/IdCVnr8jh8wzBEBFKuzFwF4yw5Q45PkyoB0HF322c1Ay8io8toAisrvUbvcquGSuhzEgpuPXk2
	F033KgZ291Bjge1QlR7nVEU/tVQUlk/13fOD8uYNnlxIkg+jepIebha6JCLzPVoGpu0dpXLlBOUaW
	BViGX5Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTiLL-00000009Qqp-2I57;
	Wed, 18 Nov 2026 16:17:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTiLC-00000009QlV-1Eul
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 16:16:59 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AIDQfCV3847307
	for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 16:16:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=aGe5/35woBl
	dXiPfqQ49uVeqf5gd1K2N9K/JlpgH0bM=; b=SmXFyTTpfxkyIIUFFruIb6Wl0m9
	IhD+1LOsHb5gF2fMOJ19it96xX5wdl/2kRwo563HugOxMaJUyCzSU6fExEWKU9A8
	AAk819vkz0Q7tLs9QDl/c9kArEAF0SNWGdV5Qbzx3ZEneFU81vEkw7+u8XxcnskY
	izIpzcT4TutiM2OUn/iopob9I+CD2CnZzuDvRxPz794BnBV4TrqZ9KcafE7Zya7y
	HhePdMueDFKtyMuFOZt9UmOwk+zFfz7esTE7mstfOumDGgZsXFZiN00K2dljkDS/
	mqrXyNv3mnkZOVe5yOU755x6JdOSrJuErlXCF5eGbnkMdQOfxrNtsUXDyEQ==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j0yvauy5b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 16:16:57 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5ece5510b79so800634e0c.1
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 08:16:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795018617; x=1795623417; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=aGe5/35woBldXiPfqQ49uVeqf5gd1K2N9K/JlpgH0bM=;
        b=bhwk00LZmQf2cqq4uyayb9MByFYh31TgYcHaJcaFXYUgqgF2HCrk24qFE2DdDnHndf
         +JSxY8sWxndLtkT1hc9Bd3P18Gy1SieQTuP1hc1MeTmfQkg9NNQg6JNUyeivjC9aR4Vp
         HbcFSBPJ3dZ19tdy0EcRnD6Gmcsr/e0AGwRcE1xZOuZm3PyIav94z1DgNoOpSB2O68/x
         lVIdyNlUN1q4F5OuHvbbAbXLmrNhaGYRH+0Gj2GW6iILVz29XQqJzyAZZgPSZxN1x+zZ
         QsDus7blDk5E8DXslAN6X65jQ0uu+55WeLZt67J1an8Gv30GpqVerH8cn1FuPzoM1YSN
         FKAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795018617; x=1795623417;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=aGe5/35woBldXiPfqQ49uVeqf5gd1K2N9K/JlpgH0bM=;
        b=zPtgcVMdluY70wOZuT9xrwNDwVms6CfFVRMWP37kweG0cJbg7fhiDbb/EyYs7U/CTs
         HOPCHDLaI0iG2wA1gwWawSXptuYUdfV9qPFOworRq/IzDN85wZu3mIed5k2jrQWyFqgD
         V6C8TNSSdwv+4kOFqk+Ey26brd5o3RR4S2sBvIkatGJILSjpuhUfBhG0HWFUyc5I5K4Y
         5uYZ4vxHxCA22VVMPRrNqtsaJqr9xfNbZfc1f1t6su10WWcFEHbXbHko6pjzXSoiHQEv
         R4p5SG3buu1pTzjJVWPKabZq7/+auAngglKZF8mG3Wi7n6u/gR2RvoWVIp1h3tTPnW4V
         PKHQ==
X-Forwarded-Encrypted: i=1; AL+hErFqDt3D+7yQjk04v2Kys0tsSae4h4nRVRFA6qx5Qd+rgmgbOTsE2QAdFKdki0E/xnMtDoTQfEUSKEQbD9NU+Q==@lists.infradead.org
X-Gm-Message-State: APuU4Z8EG0uNSLaik2ZWVS+Yf2WyFsoHpImfKIlvXT+x5HQcPM6vuD0p
	SIpQhFyw4A8a5wyzkVRVMjU3B9wFz4SJP5t4hufV6r8wuH6eS/QImbDgBgTgT1ibAHqQPCP+ys/
	dIATuXmaEFn8ulUQZrpY0eWGdUyjhQMEMgMBU48f5o1UTLGJJDfgAze7sto61dpm5twbnIsgYCq
	E=
X-Gm-Gg: AYBFou0aSZ0TxjNjxcNFz6J9UGA7ALw4RX32qUlPygEh0sNuP5a68htHUrpaNUIOSzt
	dzyUFh/EEwvDR9LCat1tddwTzjmgDDJLigPWX2CsVkxmyS8uvS5kN8t1GeZCrTVOpsgFpkNSRk9
	8ZaWE5UiyHSrToxFu80FfNcNbJrZUnocVo/7b6CrXXRKjwQxPlQPSuhxmC0JPHSdbYzslCKcVqw
	9Qp7ctF2OaxOWiFvcB0iJXvqKdTErz0w72oNFjkeiYhgVZqGFRjkSKGZ1X3clohmhdxrmCTNfml
	MME17iLwmS00VJd/8OdMNOSp5TXkZLB69cQ+4c7sf+w2Y0V+KEz1h2LuZ5O0Hr/fvlTpOt8j41Y
	8hekTni5husop8UysFhK+m1t/2B4BkRpvQc1Md6B4uC+LkL6RELkWMtKeZV/tQMluA50hVASkAV
	TG
X-Received: by 2002:a05:6122:1b8e:b0:5ec:7589:f9e0 with SMTP id 71dfb90a1353d-5ee64724bd7mr1781039e0c.11.1795018616644;
        Wed, 18 Nov 2026 08:16:56 -0800 (PST)
X-Received: by 2002:a05:6122:1b8e:b0:5ec:7589:f9e0 with SMTP id 71dfb90a1353d-5ee64724bd7mr1781018e0c.11.1795018616101;
        Wed, 18 Nov 2026 08:16:56 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:d355:fe70:14a0:ac8d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb78418853sm217090495e9.8.2026.11.18.08.16.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2026 08:16:55 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: rafael@kernel.org, tglx@linutronix.de
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Andrew Morton <akpm@linux-foundation.org>,
        Peter Ziljstra <peterz@infradead.org>,
        Bradley Morgan <brads@mainlining.org>,
        Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
        linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH RESEND v2 2/2] powercap: idle_inject: Create per-CPU threads on registration
Date: Wed, 18 Nov 2026 17:15:27 +0100
Message-ID: <0fd0b28b29f6d9ad38bc91f3582bfee511fbf4f8.1794992905.git.daniel.lezcano@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1794992905.git.daniel.lezcano@oss.qualcomm.com>
References: <cover.1794992905.git.daniel.lezcano@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=SMzXx+vH c=1 sm=1 tr=0 ts=6afdcf79 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yOCtJkima9RkubShWh1s:22 a=Z4Rwk6OoAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=OuZLqq7tAAAA:8 a=z2xlO20o2AOZ5rEB0BcA:9 a=tNoRWFLymzeba-QzToBc:22
 a=HkZW87K1Qel5hWWM3VKY:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: -fCKWMYhcH4EV8oAAAc7PLx3CeglRf__
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE4MDA2NCBTYWx0ZWRfXxW0nOi/swsPz
 ACjrPclAuroxL+H2BK9GQU8Rc44pdzhU1MapBUwoBeK/HiYydSoLy18bSh87W31uc9M1ezn3jVs
 uKKO6QvTeJcW8Em3goiR2VzIkl76Wv2/UCexsBgN/7ysEkBR3seqgwKjmIXAU2/xMnDjeyAzB17
 FcokrlybuAut5NvtscoHRDxGjR04FkdYX6W0pZ1PIvto/UCset63+isMkfwjLhI5Cv1+MoHrTSj
 gfO7VAjxV54NOUxLkmHCccuHLUoAEYNlDrDoAHAt8uJSoTiT8Qe9m5ZDGhr5LGyK6pKP3WQA46w
 YbNaCStm9qiz8WwtjbV+tW3MG2nhDX05ok76WGLOc70Jdf3S3sLdzKfqGzlcvgtyE9PECv4EV67
 BnCg5bZFAhtB/qTWL2MqLUgSUHD2287KzUY+5RYw8bFyejoOF0KRHOiU2zDaXPn+HDR7CuWY0eP
 xMfxV2M1AqRkOEziX7A==
X-Proofpoint-ORIG-GUID: -fCKWMYhcH4EV8oAAAc7PLx3CeglRf__
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE4MDA2NCBTYWx0ZWRfX34Hupuy6Pkcq
 74hDYuMQGRQJlEsgSylO2zo+mh1XnhnYG242+9nvx/Uv0pffFyNKlpvnwEkhDuo4V6eX3Kesu9k
 kXh0iuKuVjJ+EiYGPsWaeeyXua7nbUc=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-18_04,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 suspectscore=0 bulkscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611180064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_081658_363886_E3F0A977 
X-CRM114-Status: GOOD (  25.18  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1
Message-ID: <20261118161527.TI3cDxlT-Pv7aVNNyuN2RSlsi2M6jbUn7zQQ26rNo1g@z>

Create idle injection threads when a device registers instead of
creating them unconditionally during early initialization. Destroy the
threads when the device unregisters.

Use a per-device smpboot descriptor with the device's CPU mask so thread
creation and CPU hotplug handling are limited to the CPUs registered by
that device. Allow stopping devices whose offline CPUs have not yet had
a thread created, and update the registration documentation to describe
the thread lifecycle and possible failures.

Serialize CPU ownership checks and claims with a framework-wide mutex.
Without serialization, registrations with overlapping masks can both
observe an unclaimed CPU and overwrite each other's device pointer.
Their smpboot descriptors can then share the same per-CPU task, allowing
one device's teardown to destroy a thread belonging to another device.
Registration rollback can also clear another caller's ownership.

Hold the mutex through smpboot registration and failure rollback, and
during thread unregistration through ownership release. This prevents a
CPU from being claimed again until its previous thread is destroyed.

Stop idle injection before acquiring the mutex, keeping timer callback
cancellation and stop-side hotplug exclusion outside the ownership
critical section. Neither the idle injection threads nor their smpboot
hotplug paths acquire this mutex. The existing caller-side lifecycle
synchronization requirement remains in effect.

Reported-by: Andrew Morton <akpm@linux-foundation.org>
Cc: Rafael J. Wysocki (Intel) <rafael@kernel.org>
Signed-off-by: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
Reviewed-by: Bradley Morgan <brads@mainlining.org>
---
 drivers/powercap/idle_inject.c | 69 +++++++++++++++++++++-------------
 1 file changed, 42 insertions(+), 27 deletions(-)

diff --git a/drivers/powercap/idle_inject.c b/drivers/powercap/idle_inject.c
index a25eb2018acd..24646b8be9ac 100644
--- a/drivers/powercap/idle_inject.c
+++ b/drivers/powercap/idle_inject.c
@@ -10,11 +10,9 @@
  * It relies on the smpboot kthreads feature providing common code for CPU
  * hotplug and thread [un]parking.
  *
- * All of the kthreads used for idle injection are created at init time.
- *
- * Next, the users of the idle injection framework provide a cpumask via
- * its register function. The kthreads will be synchronized with respect to
- * this cpumask.
+ * Users of the idle injection framework provide a cpumask via its register
+ * function. The kthreads are created on demand for CPUs in this mask and
+ * will be synchronized with respect to it.
  *
  * The idle + run duration is specified via separate helpers and that allows
  * idle injection to be started.
@@ -40,6 +38,7 @@
 #include <linux/cpu.h>
 #include <linux/hrtimer.h>
 #include <linux/kthread.h>
+#include <linux/mutex.h>
 #include <linux/sched.h>
 #include <linux/slab.h>
 #include <linux/smpboot.h>
@@ -60,6 +59,7 @@ struct idle_inject_thread {
 /**
  * struct idle_inject_device - idle injection data
  * @timer: idle injection period timer
+ * @threads: per-device CPU hotplug thread descriptor
  * @idle_duration_us: duration of CPU idle time to inject
  * @run_duration_us: duration of CPU run time to allow
  * @latency_us: max allowed latency
@@ -82,6 +82,7 @@ struct idle_inject_thread {
  */
 struct idle_inject_device {
 	struct hrtimer timer;
+	struct smp_hotplug_thread threads;
 	unsigned int idle_duration_us;
 	unsigned int run_duration_us;
 	unsigned int latency_us;
@@ -92,6 +93,9 @@ struct idle_inject_device {
 static DEFINE_PER_CPU(struct idle_inject_thread, idle_inject_thread);
 static DEFINE_PER_CPU(struct idle_inject_device *, idle_inject_device);
 
+/* Serialize CPU ownership changes and the associated thread lifecycle. */
+static DEFINE_MUTEX(idle_inject_lock);
+
 /**
  * idle_inject_wakeup - Wake up idle injection threads
  * @ii_dev: target idle injection device
@@ -279,7 +283,8 @@ void idle_inject_stop(struct idle_inject_device *ii_dev)
 		iit = per_cpu_ptr(&idle_inject_thread, cpu);
 		iit->should_run = 0;
 
-		wait_task_inactive(iit->tsk, TASK_ANY);
+		if (iit->tsk)
+			wait_task_inactive(iit->tsk, TASK_ANY);
 	}
 
 	cpu_hotplug_enable();
@@ -319,12 +324,12 @@ static int idle_inject_should_run(unsigned int cpu)
  * idle
  *
  * This function creates an idle injection control device structure for the
- * given set of CPUs and initializes the timer associated with it. This
+ * given set of CPUs, registers their kthreads and initializes the timer. This
  * function also allows to register update()callback.
  * It does not start any injection cycles.
  *
- * Return: NULL if memory allocation fails, idle injection control device
- * pointer on success.
+ * Return: NULL if allocation or thread registration fails, or a CPU is already
+ * registered; idle injection control device pointer on success.
  */
 
 struct idle_inject_device *idle_inject_register_full(struct cpumask *cpumask,
@@ -342,6 +347,8 @@ struct idle_inject_device *idle_inject_register_full(struct cpumask *cpumask,
 	ii_dev->latency_us = UINT_MAX;
 	ii_dev->update = update;
 
+	mutex_lock(&idle_inject_lock);
+
 	for_each_cpu(cpu, to_cpumask(ii_dev->cpumask)) {
 
 		if (per_cpu(idle_inject_device, cpu)) {
@@ -352,6 +359,20 @@ struct idle_inject_device *idle_inject_register_full(struct cpumask *cpumask,
 		per_cpu(idle_inject_device, cpu) = ii_dev;
 	}
 
+	ii_dev->threads = (struct smp_hotplug_thread) {
+		.store = &idle_inject_thread.tsk,
+		.setup = idle_inject_setup,
+		.thread_fn = idle_inject_fn,
+		.thread_comm = "idle_inject/%u",
+		.thread_should_run = idle_inject_should_run,
+		.cpumask = to_cpumask(ii_dev->cpumask),
+	};
+
+	if (smpboot_register_percpu_thread(&ii_dev->threads))
+		goto out_rollback;
+
+	mutex_unlock(&idle_inject_lock);
+
 	return ii_dev;
 
 out_rollback:
@@ -361,6 +382,8 @@ struct idle_inject_device *idle_inject_register_full(struct cpumask *cpumask,
 		per_cpu(idle_inject_device, cpu_rb) = NULL;
 	}
 
+	mutex_unlock(&idle_inject_lock);
+
 	kfree(ii_dev);
 
 	return NULL;
@@ -372,11 +395,11 @@ EXPORT_SYMBOL_NS_GPL(idle_inject_register_full, "IDLE_INJECT");
  * @cpumask: CPUs to be affected by idle injection
  *
  * This function creates an idle injection control device structure for the
- * given set of CPUs and initializes the timer associated with it.  It does not
- * start any injection cycles.
+ * given set of CPUs, registers their kthreads and initializes the timer. It
+ * does not start any injection cycles.
  *
- * Return: NULL if memory allocation fails, idle injection control device
- * pointer on success.
+ * Return: NULL if allocation or thread registration fails, or a CPU is already
+ * registered; idle injection control device pointer on success.
  */
 struct idle_inject_device *idle_inject_register(struct cpumask *cpumask)
 {
@@ -398,23 +421,15 @@ void idle_inject_unregister(struct idle_inject_device *ii_dev)
 
 	idle_inject_stop(ii_dev);
 
+	mutex_lock(&idle_inject_lock);
+
+	smpboot_unregister_percpu_thread(&ii_dev->threads);
+
 	for_each_cpu(cpu, to_cpumask(ii_dev->cpumask))
 		per_cpu(idle_inject_device, cpu) = NULL;
 
+	mutex_unlock(&idle_inject_lock);
+
 	kfree(ii_dev);
 }
 EXPORT_SYMBOL_NS_GPL(idle_inject_unregister, "IDLE_INJECT");
-
-static struct smp_hotplug_thread idle_inject_threads = {
-	.store = &idle_inject_thread.tsk,
-	.setup = idle_inject_setup,
-	.thread_fn = idle_inject_fn,
-	.thread_comm = "idle_inject/%u",
-	.thread_should_run = idle_inject_should_run,
-};
-
-static int __init idle_inject_init(void)
-{
-	return smpboot_register_percpu_thread(&idle_inject_threads);
-}
-early_initcall(idle_inject_init);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
