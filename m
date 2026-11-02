Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67702606A338
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 23:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zZcLvZwa;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=GfXf1IO4;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=BquDL5dp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hiiu1gV7ws6dpvLdIue5E5jyBcy7yEBEq5LTkF+puQY=; b=zZcLvZwaxbQafPpnhjNegJcqlp
	spEXEmI5uaqhsn3u1+Yn+/t1olRNkf/v+YWDb7tWJUdXooLM7vgxzk54QzgmWOIbzAaTcvTbLruHk
	Z3rzci2VdJHIupw+YZNaaNUg9JJP5hfG+HYm5jNkWOu+3kDBu2t/9Z/lU7Yh+uugQalr/W70fUVSq
	TD/aa89lkHODJOx8C7mGlrPVChnx7cUWcphR1+3VJhD32l/fmpsCq7KlwQPGvY59E4+URUbPMSHSz
	SFhq78XkkYD60xAzf1CNvmvxajw+apfUnT3B2z29HclB52f9rVRpwjqecne6b+RrPUbdWwj+9jy37
	buNTEFkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO1Al-00000000cCe-3bre;
	Mon, 02 Nov 2026 23:10:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO1Aj-00000000cB3-1hI0
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 23:10:39 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A2K62pS688184
	for <linux-rockchip@lists.infradead.org>; Mon, 2 Nov 2026 23:10:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=gSxjo7G/C4i
	KFeABmyD/cOIF2FiAgdOm/dXL8y9CJck=; b=GfXf1IO4G333Kn+mISHKagwfJvd
	jg3ziOgrRSmF8W7h2zp2MNPIJ+jghNIW0xLXDO2Fm2KQEhyfls2jx7N2Gf9WN/xW
	ApZxRo7/gdXbngf9TjMw0ixVNCVdVILFFDEDszi8zFzfyD/krL9ZvqLVYEU21yAB
	d75JRXcPSS3nCeAs6VvD5k+4R1RtqKaxTs3GuXauJSL5nvwNS2/95tRbod2sRziP
	Eo2D2L8gT4OjDt9Rg2g5S7F4LaumsKcBsWFTBHtPaKx0knAikw3sGB6dxdbxl8zm
	o3ZSKnIWUKFg5qakEtjA7jfkCqYLb0Mlg1+w1+rAWRZe3j4YHpUi/yQ8eyA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hppfebm4b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 23:10:36 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-943e8ff02d0so314871285a.2
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 15:10:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793661036; x=1794265836; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gSxjo7G/C4iKFeABmyD/cOIF2FiAgdOm/dXL8y9CJck=;
        b=BquDL5dpQrvLSUbwtsIAtPpmxkAPSPy6r/6hVCNNCbvKONzIy9jvVFnOgULEP73W/F
         Wo6Bji7jxMjwbOQTsJ035zrZX8yQYoHtJPx3EOR+m6rWDBMsjKxxOOsD13oMwuEEzhai
         7EAVjl3PNusMl0h5l1unf8R3CpefPQ/NoqfQQPWqknXuVAb3+XiGW7KsdJFHRhxDj4cT
         eKb/f/DxlfK6dCsPNiPBrVXLz2L3b0DZBXiSVOhOK8wwOCyVcY2OP6Sz3gRnaHX2kRkT
         n4kLFWioc9+FpH/K/3axb2qZB7DI+jo2gYvFzkTdEmiRGUA/g5kbeAw4e6zJvhmSRS9F
         kVPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793661036; x=1794265836;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=gSxjo7G/C4iKFeABmyD/cOIF2FiAgdOm/dXL8y9CJck=;
        b=KeHrUU3agXdtvTOVo/WivdwuwTZkd/y7g6jkK0N+hxzqT7kgnj9R0p6qHeXMFBlyAQ
         JLZ//9KgYuvoJwdleDz2jVEMtCO+cunxR1wdszDRruiWZlmsu2XI6Q7HEwjWay9hbacg
         q9YPVttVfp7OK+l8AMl5LvURC7XD+hG2U7tVKLopbocMc+HcnPj8qmu5jqpC/4qXrsJb
         J2rC6kYzAaT7rymukymeFsW/lBSiIMflMosvr6punSQxvO3ZzkSqWRbh0oWCFChyvHvS
         ABe6WSWYKKhH19WbVzdLxGi3xvXqNr0AdsnBcWVs8SIY29EVEHB9yPIY/Z/4n465f0Pz
         dV0w==
X-Forwarded-Encrypted: i=1; AKwUvBzl19B0V2dBp4IMXxxG40kb7b1/YIII8CJX1fDUH3mlM0/LxHhqIFGhVD7fTnS1/3uHhl4j8RTHiTo04nVk2A==@lists.infradead.org
X-Gm-Message-State: AFq9FYKyvhwhqDOG8T75dqwQ3+H/jppGI5YXPyVYP2Du4Je4FXznc64w
	DpVjYaURx45uR7Fd12vnECVzJeuNNgfRranteinRbLogZ9Th5GygUIOiehbwThg0IjIA8bcaz3L
	4N110ktbXDQiarvv89cHTribGaceMuewFOSAi3aaE/gYhACAqPWa7basKIqGZm10Zjm6fPLHm/A
	k=
X-Gm-Gg: AYBFou15292vR8BI2/RqODLaezaD8nD8OEF7tmIHnk5LRdPlJiV7yO3kEEBbdESZ0BS
	K2ZxyAeMf1stZ7RUxzFSBiXdgAgAJErSMfspr6qeZZ2P1LmtBtYisAmHlwoNqIbMWy9rUs4GSix
	OXwqKDReNwzffuUHuXrGxPoZJo1WCbgbWK2d6S3BtBy1Cb0ZOqKaZbCZfXG+uuX1D8OoPbnwPDv
	k2ok1s9GVdSmoANbhvobpGE0mbSDMWniIzCoqBjFtYxC+U8QZluLnuIDlsHcsHs2t1QBFU1zsmZ
	rdiIX+3dinRVnbcYIUpogzOsJrwFtmKN1t0P+gyGRcQLcINU57ITooRDjAYby2IA5CO7koJV/MV
	C8i7rLo8/9bWkKZHRXH3oSwj/+oAeK2BpUrkUD2KNdK7j31Ur7GPWevbUKVNNs/c/a2Pyt3bKNU
	S7
X-Received: by 2002:a05:620a:880e:b0:93e:c12c:fbcf with SMTP id af79cd13be357-944217b26bfmr1799037785a.75.1793661035871;
        Mon, 02 Nov 2026 15:10:35 -0800 (PST)
X-Received: by 2002:a05:620a:880e:b0:93e:c12c:fbcf with SMTP id af79cd13be357-944217b26bfmr1799034385a.75.1793661035243;
        Mon, 02 Nov 2026 15:10:35 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:8b9e:7797:dd05:11cb])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b2a82cf248sm25198725e9.2.2026.11.02.15.10.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 15:10:34 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: akpm@linux-foundation.org, rafael@kernel.org, tglx@kernel.org,
        peterz@infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
        linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
        linux-kernel@vger.kernel.org (open list:CPU HOTPLUG)
Subject: [PATCH 1/2] smpboot: Allow restricting per-CPU threads to a CPU mask
Date: Tue,  3 Nov 2026 00:09:40 +0100
Message-ID: <af37c4e7811a86adafb2064e7cf4aa4f5090ab4b.1793660202.git.daniel.lezcano@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1793660202.git.daniel.lezcano@oss.qualcomm.com>
References: <cover.1793660202.git.daniel.lezcano@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=SeZi5fRu c=1 sm=1 tr=0 ts=6ae9186d cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8 a=igP56NFfHUNPCibkussA:9
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDA5MSBTYWx0ZWRfX5oA3kxd0SxTO
 2jo99itam0tOE5UvN26rl8TIOtnA6zIvkwLN2iQwm8/d2c1VIdEZkFPm7U6oQdbVAlp9yx5AEP1
 INsrV5NjDbLd3q1c0OBOkE5TbrgN6HL6PkhRHXlG3NL940QwISy3KmxMMJ8ZoDmCaOjNpTm2Oaz
 SFn/GTyExtPWkfoVxC94eOFUJkfTzi8TjhjmCw004QNbx5JxE/m0RS9EcXGppSK6RW8I0+wHKwO
 d0iQ/LUdN0OZ7fDUSV9rLcsDhBkmHGu+pkmqFdfNhS5yuWOd8+IvbZ3yhkQDJ0VuIZxEEBxeQqJ
 RT8DZDWe0EikO8LZ/LWIa1UxAFACkyMQ685WC/daR7znWnuqeTgflmZE5kuemIwv3qvJ45R2t/d
 5EfjXZKBFFHdz8rlkC4oJBj8yehMwlcbz8N/6KSTvdkJkwSTugd7V9AEr3QIz8irCbDr3oU8ozo
 U+xXTEYnodqGIE9fK1A==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDA5MSBTYWx0ZWRfXwAYoSk8Dcn2d
 bgp2bSA7dZ8pnOKCdGsbEFY7J+szr85yXV0+Z51TUlgKROZVwHOI3DFEFr8jgId29I6Ba+x6nZX
 7N/H58Ztm2FKT9B2FSrWy25nJM8c1gc=
X-Proofpoint-ORIG-GUID: BksfkpBDYvkcsxvldodgvLAy46UMghrf
X-Proofpoint-GUID: BksfkpBDYvkcsxvldodgvLAy46UMghrf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_06,2026-11-02_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 spamscore=0 bulkscore=0
 suspectscore=0 priorityscore=1501 clxscore=1015 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611020091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_151037_448804_C8595F3E 
X-CRM114-Status: GOOD (  20.68  )
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

The caller must keep the mask valid and unchanged until the descriptor
is unregistered. Callers sharing per-CPU task storage must ensure their
masks do not overlap and serialize ownership changes themselves.

A NULL mask preserves the existing behavior, so current users continue
to manage threads on all CPUs.

Signed-off-by: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
---
 include/linux/smpboot.h |  4 ++++
 kernel/smpboot.c        | 17 +++++++++++++++--
 2 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/include/linux/smpboot.h b/include/linux/smpboot.h
index 9d1bc65d226c..98c072eeaf24 100644
--- a/include/linux/smpboot.h
+++ b/include/linux/smpboot.h
@@ -5,6 +5,7 @@
 #include <linux/types.h>
 
 struct task_struct;
+struct cpumask;
 /* Cookie handed to the thread_fn*/
 struct smpboot_thread_data;
 
@@ -27,6 +28,8 @@ struct smpboot_thread_data;
  *			unparked (cpu online)
  * @selfparking:	Thread is not parked by the park function.
  * @thread_comm:	The base name of the thread
+ * @cpumask:		Optional mask of CPUs on which to create threads. Must remain
+ *			valid and unchanged until the descriptor is unregistered.
  */
 struct smp_hotplug_thread {
 	struct task_struct		* __percpu *store;
@@ -40,6 +43,7 @@ struct smp_hotplug_thread {
 	void				(*unpark)(unsigned int cpu);
 	bool				selfparking;
 	const char			*thread_comm;
+	const struct cpumask		*cpumask;
 };
 
 int smpboot_register_percpu_thread(struct smp_hotplug_thread *plug_thread);
diff --git a/kernel/smpboot.c b/kernel/smpboot.c
index 4503b60ce9bd..07857523a465 100644
--- a/kernel/smpboot.c
+++ b/kernel/smpboot.c
@@ -168,6 +168,9 @@ __smpboot_create_thread(struct smp_hotplug_thread *ht, unsigned int cpu)
 	struct task_struct *tsk = *per_cpu_ptr(ht->store, cpu);
 	struct smpboot_thread_data *td;
 
+	if (ht->cpumask && !cpumask_test_cpu(cpu, ht->cpumask))
+		return 0;
+
 	if (tsk)
 		return 0;
 
@@ -225,6 +228,9 @@ static void smpboot_unpark_thread(struct smp_hotplug_thread *ht, unsigned int cp
 {
 	struct task_struct *tsk = *per_cpu_ptr(ht->store, cpu);
 
+	if (ht->cpumask && !cpumask_test_cpu(cpu, ht->cpumask))
+		return;
+
 	if (!ht->selfparking)
 		kthread_unpark(tsk);
 }
@@ -244,6 +250,9 @@ static void smpboot_park_thread(struct smp_hotplug_thread *ht, unsigned int cpu)
 {
 	struct task_struct *tsk = *per_cpu_ptr(ht->store, cpu);
 
+	if (ht->cpumask && !cpumask_test_cpu(cpu, ht->cpumask))
+		return;
+
 	if (tsk && !ht->selfparking)
 		kthread_park(tsk);
 }
@@ -267,6 +276,9 @@ static void smpboot_destroy_threads(struct smp_hotplug_thread *ht)
 	for_each_possible_cpu(cpu) {
 		struct task_struct *tsk = *per_cpu_ptr(ht->store, cpu);
 
+		if (ht->cpumask && !cpumask_test_cpu(cpu, ht->cpumask))
+			continue;
+
 		if (tsk) {
 			kthread_stop_put(tsk);
 			*per_cpu_ptr(ht->store, cpu) = NULL;
@@ -279,7 +291,8 @@ static void smpboot_destroy_threads(struct smp_hotplug_thread *ht)
  * 					    to hotplug
  * @plug_thread:	Hotplug thread descriptor
  *
- * Creates and starts the threads on all online cpus.
+ * Creates and starts the threads on online CPUs selected by the descriptor's
+ * cpumask, or all online CPUs if no mask is specified.
  */
 int smpboot_register_percpu_thread(struct smp_hotplug_thread *plug_thread)
 {
@@ -308,7 +321,7 @@ EXPORT_SYMBOL_GPL(smpboot_register_percpu_thread);
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
