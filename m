Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E29C160A2601
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 16:17:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=5EmbY3Pb;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=XzdA8nap;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=X8Ij2Dw3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=WA1WNEhrrgzu0G2gnHzppcm5NPknGKExp8aDFsckrhU=; b=5EmbY3Pbcae1xMebH+JcEwBm5k
	//4Tkc/9NNNF7beJyfoD0BMfi2BbFAjQboWrHyh6RtXNT9IiN+Vo4NijRbagW9M5tJnW6MBlAqR3a
	AVqUT6ApYi9sm4kgxn3Y9tcHKYHEhdS08HUN8dwjkx+ira023LHSB8c/L1tlj9eHPJxLN2x6wxiI9
	rvRHvLwRo0riGnAbCNI6NZTMC50pINucArLx6sKGGHMMiKgk8/89ivLmjyg5vhP0bxjXMH39XbkhO
	g8hhmsu4M0CiekuRWu6l5ZGZ0s911+itebOAjXklE756WXZMvXwl/y1K6XM/k6hHyV69vlKbXPHRs
	zRP1cJcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTiLL-00000009QqR-0sMC;
	Wed, 18 Nov 2026 16:17:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTiLB-00000009Qkn-00vL
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 16:16:58 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AIEqIgr072321
	for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 16:16:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=pOB78OBjoKU
	Kg9xXXTUE6AnEpJ3d3Z6dp04LaBMreM8=; b=XzdA8nap5wPmr2gBgUn7zmPVnYj
	fYLMbHvYy+AzZr7swPl3HfFMHooKsDpx//mbEd1waQBEMOSKQ2dbBlWAfODE0RMu
	T4SnnOnRKeBEiZsD7rS3Mi59wt2Cn5wOm9b0yHXJQgTCow88zwEAzRyltQnBsh8R
	NYVmf29JmyObSXmloI/ckvRMDA1epG65jEx4xPLIQuLeXFlWHSbcb532VpT5Cylz
	whexmf62GQP4zG2DMcqx8Aik+rqC5i1hixtiFbkFrpgHkbfs7KTTQxt7CrA1JxAI
	Od7YQrHKjIFSKDsi7oFRIBet1cak4x6P/HqbHF3yO4foyFmbPw3Env7ZkgA==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j1e5qrd31-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 16:16:56 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-5ee30bf935eso312259e0c.0
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 08:16:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795018615; x=1795623415; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pOB78OBjoKUKg9xXXTUE6AnEpJ3d3Z6dp04LaBMreM8=;
        b=X8Ij2Dw3baPAtXfpav2/aRXIbwYUf4CgqnQqsA1zqe4uNxBNgrgwucPT98mN6FfOhw
         PMcVoRonRy4ZwYKDdLeMLTG6pj8M9ALI5nWJFifaeozWLGIbbiyzZdp/JhlePI14koPg
         x+fnd4nOIyfxpvO6vAXFkYy9VKbRueX3X2jMvYon+Gp0YUZFUa2ifGxbJ0FFWTzkLb51
         m65oLbdG9vWQT8gRadiZyQOlpwxeKC4O2/kccoO4UvM2n9wRJi7ayq8uaVGX/sJ56PTS
         ra5wASbwgks6k8Lrkq1l7oGstNW/4NgeTEMpvAqsTmaeaqssyyEnUzMYFkpEz8n+m1yK
         oP4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795018615; x=1795623415;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=pOB78OBjoKUKg9xXXTUE6AnEpJ3d3Z6dp04LaBMreM8=;
        b=P2+xYJ+Ad7zuWBCEvI6H/jhM54yGZ15cqzdZYbkEvqWWpbr3oxoMczAgnF5mWHsixj
         Ny8dkkaPOlEPOEwzn+koiGnnb/rMUn/4QgRWxOwDD9i8cK66tHk5gczqcAMR2GFADiK0
         Qi0YLXG8tUy8Lg3Zu6hvS5YV8TgZ0CICLTEstN1HDiKjKmLQhddGqJL4kZwJ/Mt7CqF+
         /jdtg/11m74OQmFamOaaIlHloOdQ5SAD8eI3L75a5FhpHV/0qN8lWLdXuip/TSla6qjW
         xDmWJdxRkVWhNklNTCeeusZKmP2DhQ80AT+djI5ZLddwnMkhSIE9mIZ1vMdQUTWfdZY7
         AokA==
X-Forwarded-Encrypted: i=1; AL+hErGkQiT9qtueoNKcB/dNheP/WvDLQUfmDzmNQwEwLBpmSxiubPYGsGy61sT73TV6f2yBsiHW2/aHtMDztQe8vg==@lists.infradead.org
X-Gm-Message-State: APuU4Z9zuMIiTv+D2p3mx31duufpg5Lvk97zhYlQ1CE82Q5MZMU/yjCs
	JL21DJIuEs8I2sWt+FSoxOaOeLhsy4qEhknzkC9Yrrts2ul6kN0c2E4ipg08/pBXoF3jj4uG2k8
	Cm9SsF/cNPhSMpDk0kSQesZFohblKgqfJ4ebpghROpH1k/mBVtn0jJMLR+dy09g+1d3FZ3TGthy
	k=
X-Gm-Gg: AYBFou3uMYsJaEsP/zC3Gvb3rsTw23s2nAT1cCwhx1LqWpTAF1W6/9j0EAn5xJx9ER7
	L1RAqLw3ed9H8ApL4vLL2z7UWrv4wfxQhCm7TjqjHGWHNO7JxqwYQrhnUqrFPboqF5rkUlnSfFO
	KQ1pzfHDxRVjs+Uhz7xOvq/J/GP2a3sSw+HpPbdKa/xHkLz6YLc/I2Xd09eAe82AlaniJ9dQFzr
	THb7tdd5g1yOFNROxlO8aCEUej8crl+t2UpbJeMyeaWXrARDYk8StTS/tlbkaZyC2ozRFlK502I
	zM9rBPyS484KjFG61CzbXykzm+vLSlkCtWb+/03mdQfjuSLC61t1+stfwYYZmfVL2GQ6KCnvaxq
	spty2sCf7bb75K6hb4fhSv0U8mO5tX+tEhWireKec7Ig+Y4YFrDRNwFAf/nRHtWFJ6RQXQbHdDj
	nU
X-Received: by 2002:a05:6122:62a6:b0:5ec:c162:d58c with SMTP id 71dfb90a1353d-5ee646c8d94mr1575526e0c.9.1795018615260;
        Wed, 18 Nov 2026 08:16:55 -0800 (PST)
X-Received: by 2002:a05:6122:62a6:b0:5ec:c162:d58c with SMTP id 71dfb90a1353d-5ee646c8d94mr1575483e0c.9.1795018614742;
        Wed, 18 Nov 2026 08:16:54 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:d355:fe70:14a0:ac8d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb78418853sm217090495e9.8.2026.11.18.08.16.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2026 08:16:54 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: rafael@kernel.org, tglx@linutronix.de
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Andrew Morton <akpm@linux-foundation.org>,
        Peter Ziljstra <peterz@infradead.org>,
        Bradley Morgan <brads@mainlining.org>,
        Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
        linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
        Bradley Morgan <bradley.morgan@linux.dev>,
        Thomas Gleixner <tglx@kernel.org>
Subject: [PATCH RESEND v2 1/2] smpboot: Allow restricting per-CPU threads to a CPU mask
Date: Wed, 18 Nov 2026 17:15:26 +0100
Message-ID: <7a1e55d24c39d70caa157e6e2c823d9be5db07e7.1794992905.git.daniel.lezcano@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1794992905.git.daniel.lezcano@oss.qualcomm.com>
References: <cover.1794992905.git.daniel.lezcano@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: ar8qJPUJz1UmVet_14SDnu7_V9CTsrm2
X-Authority-Analysis: v=2.4 cv=c5Q+0h9l c=1 sm=1 tr=0 ts=6afdcf78 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8 a=5Kbu-F-uTTPTLeMpapkA:9
 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE4MDA2NCBTYWx0ZWRfXyXoNE9a71YAT
 kumWIlJ2zdyy9Ajhu2uGow02rZc4pvInft+WzvCy6YLy52UDpAwCTJCopPBtPnm5dEaMFeJ731t
 OhpIzKAUL0xjU9CVqMl828asN/XBz84=
X-Proofpoint-GUID: ar8qJPUJz1UmVet_14SDnu7_V9CTsrm2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE4MDA2NCBTYWx0ZWRfX9ozp+OQqj9Bd
 69AdTHIUE+vEXld1j6u623CIzwsjHZMfHPhjaRnSLBzTmEhwyhQ2U6G3hnPS28p4uIVzsnlbOa/
 wP2CmTHTuJ3oh55HrgqCg8MaxryNnphi7i9txoXwgQ4KsPiQCZa1vQOhsEY/dz4cUdm8zjHfQg8
 ZmvZx5jH23ryC+yr32WmLJwCQgZ9lAXnHo44xrE8iolph43USW4xixNzrBFi46UHU6m+86NZkAy
 idxU84RFkXpxTAxEmXw45SLQpxyeEn9zW6h1HZwhdYFhQWIzvEbbhOHMoTpqhLqgYugRCisNL0Q
 cGuy1uOopgtq29SNHWa6bVqY0BbhPmgY2kBB/QZAiRivYw16+Zhmppi17GcSwjH0yIt1x6wPmgp
 iDH8BuKGTbPTWUe90+7VUNICfzhstXjoegHjdMW4ig7mfmoWMMJ8mjr/pL5BbFYIsauU0m4Hr7E
 sNII92rReqUlp9DoA2g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-18_04,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 lowpriorityscore=0 adultscore=0
 phishscore=0 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611180064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_081657_053330_F53AE5BC 
X-CRM114-Status: GOOD (  23.52  )
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
Message-ID: <20261118161526.pLG0OthnUVyjmJAMBkN2E3LpYJ_vN0_FHAz5sh5JFZc@z>

smpboot_register_percpu_thread() creates a thread for every online CPU
and registers the descriptor for subsequent CPU hotplug operations.
There is currently no way to restrict these threads to a subset of
CPUs, even when the user only needs work performed on that subset.

For example, an idle injection device targets a specific CPU mask.
Creating threads outside that mask consumes resources unnecessarily.
Supporting multiple such devices also requires each descriptor to
manage only the threads associated with its own CPUs.

Add an optional CPU mask to struct smp_hotplug_thread and apply it
throughout the thread lifecycle. Registration creates threads only for
online CPUs in the mask. CPU bring-up creates threads for selected
CPUs that were offline at registration, while parking and unparking
are restricted to the same mask.

Apply the restriction to thread destruction as well, both during
unregistration and registration failure cleanup. This is necessary
when descriptors with disjoint masks share the same per-CPU task
storage: tearing down one descriptor must not stop or clear threads
owned by another descriptor.

Reject registrations that share task storage with an existing
descriptor and have overlapping CPU masks. Check for overlaps under
smpboot_threads_lock before creating any threads, warn once and return
-EBUSY on a conflict. Checking the masks also covers offline CPUs,
whose task pointers may not yet be populated. This prevents descriptors
from sharing a thread and interfering with each other's teardown.

Default a NULL mask to cpu_possible_mask at registration, preserving
the existing all-CPU behavior and allowing the lifecycle helpers to
use the mask unconditionally. Use scoped guards for the registration
locks so all error returns release them in the correct order.

The caller must keep the mask valid and unchanged until the descriptor
is unregistered. smpboot serializes the overlap check and descriptor
registration against other registration and unregistration operations.

Signed-off-by: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
Reviewed-by: Bradley Morgan <bradley.morgan@linux.dev>

---
 include/linux/smpboot.h |  6 ++++++
 kernel/smpboot.c        | 45 ++++++++++++++++++++++++++++++++---------
 2 files changed, 41 insertions(+), 10 deletions(-)

diff --git a/include/linux/smpboot.h b/include/linux/smpboot.h
index 9d1bc65d226c..57b945d51b19 100644
--- a/include/linux/smpboot.h
+++ b/include/linux/smpboot.h
@@ -5,6 +5,7 @@
 #include <linux/types.h>
 
 struct task_struct;
+struct cpumask;
 /* Cookie handed to the thread_fn*/
 struct smpboot_thread_data;
 
@@ -27,6 +28,10 @@ struct smpboot_thread_data;
  *			unparked (cpu online)
  * @selfparking:	Thread is not parked by the park function.
  * @thread_comm:	The base name of the thread
+ * @cpumask:		Optional mask of CPUs on which to create threads. Must remain
+ *			valid and unchanged until the descriptor is unregistered.
+ *			Registration defaults NULL to cpu_possible_mask. Descriptors
+ *			sharing @store must have disjoint masks.
  */
 struct smp_hotplug_thread {
 	struct task_struct		* __percpu *store;
@@ -40,6 +45,7 @@ struct smp_hotplug_thread {
 	void				(*unpark)(unsigned int cpu);
 	bool				selfparking;
 	const char			*thread_comm;
+	const struct cpumask		*cpumask;
 };
 
 int smpboot_register_percpu_thread(struct smp_hotplug_thread *plug_thread);
diff --git a/kernel/smpboot.c b/kernel/smpboot.c
index 4503b60ce9bd..f997fe85f088 100644
--- a/kernel/smpboot.c
+++ b/kernel/smpboot.c
@@ -168,6 +168,9 @@ __smpboot_create_thread(struct smp_hotplug_thread *ht, unsigned int cpu)
 	struct task_struct *tsk = *per_cpu_ptr(ht->store, cpu);
 	struct smpboot_thread_data *td;
 
+	if (!cpumask_test_cpu(cpu, ht->cpumask))
+		return 0;
+
 	if (tsk)
 		return 0;
 
@@ -225,6 +228,9 @@ static void smpboot_unpark_thread(struct smp_hotplug_thread *ht, unsigned int cp
 {
 	struct task_struct *tsk = *per_cpu_ptr(ht->store, cpu);
 
+	if (!cpumask_test_cpu(cpu, ht->cpumask))
+		return;
+
 	if (!ht->selfparking)
 		kthread_unpark(tsk);
 }
@@ -244,6 +250,9 @@ static void smpboot_park_thread(struct smp_hotplug_thread *ht, unsigned int cpu)
 {
 	struct task_struct *tsk = *per_cpu_ptr(ht->store, cpu);
 
+	if (!cpumask_test_cpu(cpu, ht->cpumask))
+		return;
+
 	if (tsk && !ht->selfparking)
 		kthread_park(tsk);
 }
@@ -267,6 +276,9 @@ static void smpboot_destroy_threads(struct smp_hotplug_thread *ht)
 	for_each_possible_cpu(cpu) {
 		struct task_struct *tsk = *per_cpu_ptr(ht->store, cpu);
 
+		if (!cpumask_test_cpu(cpu, ht->cpumask))
+			continue;
+
 		if (tsk) {
 			kthread_stop_put(tsk);
 			*per_cpu_ptr(ht->store, cpu) = NULL;
@@ -279,28 +291,41 @@ static void smpboot_destroy_threads(struct smp_hotplug_thread *ht)
  * 					    to hotplug
  * @plug_thread:	Hotplug thread descriptor
  *
- * Creates and starts the threads on all online cpus.
+ * Creates and starts the threads on online CPUs selected by the descriptor's
+ * cpumask, or all online CPUs if no mask is specified.
+ *
+ * Return: 0 on success, -EBUSY if a registered descriptor shares the same task
+ * storage and has an overlapping CPU mask, or a thread creation error.
  */
 int smpboot_register_percpu_thread(struct smp_hotplug_thread *plug_thread)
 {
+	struct smp_hotplug_thread *ht;
 	unsigned int cpu;
-	int ret = 0;
+	int ret;
+
+	if (!plug_thread->cpumask)
+		plug_thread->cpumask = cpu_possible_mask;
+
+	guard(cpus_read_lock)();
+	guard(mutex)(&smpboot_threads_lock);
+
+	list_for_each_entry(ht, &hotplug_threads, list) {
+		if (ht->store != plug_thread->store)
+			continue;
+		if (WARN_ON_ONCE(cpumask_intersects(ht->cpumask, plug_thread->cpumask)))
+			return -EBUSY;
+	}
 
-	cpus_read_lock();
-	mutex_lock(&smpboot_threads_lock);
 	for_each_online_cpu(cpu) {
 		ret = __smpboot_create_thread(plug_thread, cpu);
 		if (ret) {
 			smpboot_destroy_threads(plug_thread);
-			goto out;
+			return ret;
 		}
 		smpboot_unpark_thread(plug_thread, cpu);
 	}
 	list_add(&plug_thread->list, &hotplug_threads);
-out:
-	mutex_unlock(&smpboot_threads_lock);
-	cpus_read_unlock();
-	return ret;
+	return 0;
 }
 EXPORT_SYMBOL_GPL(smpboot_register_percpu_thread);
 
@@ -308,7 +333,7 @@ EXPORT_SYMBOL_GPL(smpboot_register_percpu_thread);
  * smpboot_unregister_percpu_thread - Unregister a per_cpu thread related to hotplug
  * @plug_thread:	Hotplug thread descriptor
  *
- * Stops all threads on all possible cpus.
+ * Stops all threads associated with the descriptor, including offline CPUs.
  */
 void smpboot_unregister_percpu_thread(struct smp_hotplug_thread *plug_thread)
 {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
