Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404CB606A32A
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 10:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RSmTnfNK;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=BrRsi15Q;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=GoM4Ov4Z
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=MaoMo00I8tLzhDiqcsfvfUN/UJbEy1+SgS/paJFW/HA=; b=RSmTnfNKWcUcKlZt8H4om65Eii
	kO2PBgLE2idyQyKe4ZFa1Vbyw2iDmkPLn+2ztLHvVIQe8qNRfkxdmEfLsLux2T+oIOF+wSnu/g1Q0
	YHAgLzbv8qIMJ2HwYOwTkeFw5cecnsFtCAWAnQPCVB1+3OvnD4eq8lUAtRo8oomuqRZwkJgKTZ/tm
	Icbr+9HTMKOr4zpQqxik+/cu+wufdutfsM+Sc5tlTmTs4f4XmRI9b1QFxs/5wLNl9raizP0vL0gzl
	P7uRT/j3uhW3LyxOvAMcx2CVEKlbO1uioRRy69+UE/pzMQLw9WR7XFt2bye5v1IIimWbXzupBdrR+
	C2wnDv6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTczZ-00000008ZGW-48Ld;
	Wed, 18 Nov 2026 10:34:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTczX-00000008ZDx-0L3k
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 10:34:17 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AI9lfhd835353
	for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 10:34:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=JM0P9MP8V3Z
	9pRfWYuZq7GLzbhT+pDJLjfew9vz2LnA=; b=BrRsi15Qn6gRPGJ00LtpID9bdaB
	MVKAcwjaZE+xrOeDgjutOTF8imQFK6o3AuN/9R44zMt7BKGIHdm+rV+8kNncLumY
	OI6Wj7AvToP2pjoFnZlvJ/g7UuknaDZWqtwOhiXNpWSYa8U/ePcI62HDeXS6Y0Eh
	N//xJ55tmW2Ic78N3HSO4guCnydth2j2ftHxZYl7wXD/63FJFgWpUtFnGC55/Yug
	jv95vOmZ+qwTk5xP3bLuU+ocUm7giG2VTx7Oi2oTxhObjSApzSRI2Nr31mileXrT
	lz+ETUEiLFAH6xTf7lWZVg6r+KWtBYO028zvE7/IADOv7dTbrDnrU87ItyA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j0yvcjkdr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 10:34:13 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-945b0154705so122645985a.3
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 02:34:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794998053; x=1795602853; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JM0P9MP8V3Z9pRfWYuZq7GLzbhT+pDJLjfew9vz2LnA=;
        b=GoM4Ov4Zj/KkxIV527u4HfWOkTmXWJNOCaRERbI2H8viHS8OkokHZh2RYzmJvFFoG+
         blH7Xb8q4JTvXRtHD63DSYc5ysueRrrxqyyteyGcMegg4DuPH6EOcAiRGv/oCC3H19f0
         KVi5qVfUNmEVWrJZkDC832RlcUmn+U1n3HlwPjUR3J3QspvVpshbblQqKwGEZk43P/4u
         vuoLRne3VeKgj/bOiBn6rhxHOStW3dgb/ZLmKLplpFryJh/4OBsyqMt/qyxQt6yqOYn2
         CaGU8wB2ix89iqdGBPYCdmSAWKf2tlkaVr55VdbOXd6s1b0bTvh90xOqdtia6m+7I2vU
         1f4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794998053; x=1795602853;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=JM0P9MP8V3Z9pRfWYuZq7GLzbhT+pDJLjfew9vz2LnA=;
        b=B04gBynPb9J69l6/H+2yAAkpFUP4w27ZkOd0isKJzW/LuPDvzeFMVx6hwtobbj1U8x
         9lhu5Wbje2XQbXKK93Yy5eaIkANF6acrtegDHTP/uLb91re1z+JdxOXW+ZxaLtJNel9T
         EHJDX0t/GJDDv2oDGqsxwBvTKmXJSXgPz+ZOukUKHL70lLpJ3Z1/d3yR5E8H2PEHZZ48
         wEYwCalHJnx4F+sNQ8i9Gb0PyEE6T8/4+vleEW2LkAnU3yvlxRsQ8bTzfSI3Ujs6sIgl
         V3IbtjMMn1iJB+YQIWBj4C3vKjFk+ORlhglw9CW1qYe+RFEKDrvdyGdU6jZr3GiJ0XFE
         L9wQ==
X-Forwarded-Encrypted: i=1; AL+hErHvn4O6NHN5XiCZghuMvYBQU185Mk+WYfSz/hp1Fo6LUT7amBpxkQJT2iqJd881JJIoOTZoe9DuO0WATZ2GHA==@lists.infradead.org
X-Gm-Message-State: APuU4Z+IrS9B65ayHYc/tifqUn2oLsBjYauqfbtDG8NHSzdl1iR383Dw
	tA+q/THYhESreA/n5F7HiRfondFkKi2nM4DKbv4JNqcsBX3BTX4JEmjZhepz2+WVSrf/GDdpj0y
	CbFdztacdHUnIYAA1G1rsbKTP9fciN8XPwANkewm63MQpTiFi6vKlinwPoJCgog5geJytaXjolK
	8=
X-Gm-Gg: AYBFou3J1KQOhD/ChAMf5sS+M/hOrM9hngtG13P7QHWz5Ld5/N/VMGBhyQH+oyIIUqN
	aHoGpbwjAqIh38f93JgohrWkB9hDqKQUWVB6KewvcXhrNKRM0YySUWNJF3S7DMBMRFF/55y9qEd
	TFdCuntE+c75UbOSCFDu+PZOp7Os2mBGXKMkmUgMu2/stFvNZbOy9uFIEHM71I5qlxoSIO8VFIp
	h48FEyXZDvD1m6+nAIsgpDwcwCGa3zYHcRpgDMJenkiUUYj+ou5UZjPZFvc+nRg6Pa6YbFfnQJX
	mpz37BxWrJwf33PJMbHbWloI69HzLi4lO7rwbFsY6NtwFTBSHY8tqGow2/p7NuX4XQF4+rhel5r
	X2gGwwD8/guV4VkmGHs2lpDdTpRZQBx4JGLG8iWCU4pNZatMC9nHXcMhc3OfjACf+5KQ111j6dZ
	4S
X-Received: by 2002:a05:620a:44c2:b0:949:6841:60d4 with SMTP id af79cd13be357-9499957e934mr403492085a.24.1794998053336;
        Wed, 18 Nov 2026 02:34:13 -0800 (PST)
X-Received: by 2002:a05:620a:44c2:b0:949:6841:60d4 with SMTP id af79cd13be357-9499957e934mr403489085a.24.1794998052798;
        Wed, 18 Nov 2026 02:34:12 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:d355:fe70:14a0:ac8d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4a650d2ecd0sm4519631f8f.8.2026.11.18.02.34.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2026 02:34:12 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: rafael@kernel.org, tglx@linutronix.de
Cc: Andrew Morton <akpm@linux-foundation.org>,
        Peter Ziljstra <peterz@infradead.org>,
        Bradley Morgan <brads@mainlining.org>,
        Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
        linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
        Thomas Gleixner <tglx@kernel.org>,
        linux-kernel@vger.kernel.org (open list:CPU HOTPLUG)
Subject: [PATCH v2 1/2] smpboot: Allow restricting per-CPU threads to a CPU mask
Date: Wed, 18 Nov 2026 11:33:48 +0100
Message-ID: <7a1e55d24c39d70caa157e6e2c823d9be5db07e7.1794992905.git.daniel.lezcano@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1794992905.git.daniel.lezcano@oss.qualcomm.com>
References: <cover.1794992905.git.daniel.lezcano@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=R5OWitRX c=1 sm=1 tr=0 ts=6afd7f26 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8 a=5Kbu-F-uTTPTLeMpapkA:9
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: RxW_0ZsjFqegwQNmhbpv6GKxHo4PV5AN
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE4MDA0MSBTYWx0ZWRfX+Q70UbudWpDC
 et372AcDWUvuENzZoyesUhay2AW4IAn0BA43RwUWu0JQV2diHjiTctco+JLlRiFp9ieeC+6QrsD
 PYBz2upAddBSjFosYMaC/jQbc3ZiDY8=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE4MDA0MSBTYWx0ZWRfX1GwCHzZ05Q4e
 PBnDaBAT6Sd40cd1szFjpZUudobv4OXQ38TkwZ7zy0wtQLjelGqnN0oji4halIHhXuvs9SECNnH
 8T9wMOF/JBaQmTrWQLp52vap0y4ksOHgscyHpP+LVXyCoFJrfOfs/IlEuzyrkSa+rIQiTTMhkfL
 Y2xo0lXnmT7IZBHUSg+GWk7ruFNdB4+rDSgYd93WyIS2617bSVcTbOsboSj3GaZZtmS77wKMTIY
 nDvnvvl9VewgIfMQdQ7w1/yX0SEVbCNpASCsu+Zi8U2Hg7K0duk2+Ywli7Lv914hv+6OzHyaq/i
 cpDupbXkAtyz2qN2f1Y2kL38XdZEnGCqvAGaDUiWccS/JvnUcBT2+TfCN2AjU4890A4EpJcF4Nj
 cJS3niQOWKK0C6NaoydIv45RpEAtTSm8ULFch92YC8itWVXcxGQLQBDPNo81Wexpaqaw3lqWq5e
 D8+LRtTzmwD47dcDqXg==
X-Proofpoint-ORIG-GUID: RxW_0ZsjFqegwQNmhbpv6GKxHo4PV5AN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-18_02,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611180041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_023415_243416_0FEF582E 
X-CRM114-Status: GOOD (  24.04  )
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
