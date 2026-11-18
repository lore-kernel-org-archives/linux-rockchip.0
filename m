Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EA4606A330
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 10:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ErSgwtjX;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=SsUiiGMG;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=WQwCcV8p
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=x31PPm9EtolFalHAi7lRzKXEVUBkUCjYLuVHWwNxrek=; b=ErSgwtjXgQYtdOtqjUtCgsCLpL
	aW5QpUVLZzm8FTf37TAVXhtAlaWC1YFx/bF382g413NBuOAJNFYJ9neYKehzq2a9c2Crit5jficB4
	jCJtFdL/Gp4ntz7S2s9+Rc0Kpo5V3xcx4h0Pzhc0OWTAQpQp717J1vsE4E7juiMz5VM7qsRLcCZFQ
	xv4SdqhqIRj/rzag3XvePIW6EWGSpbpDZmvttwTPHiIPYjnQgu7kGFaMOWVMVLHcXSYJ25BRVg/bs
	YcbfJEt2jsx9cS9ZFcBE0/9buPdnY0uJg9nd5MLE1+R4+Pawvpc2j5XG3eKyGaWJBIlLRJWX03fGu
	fBGisjVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTczZ-00000008ZGF-38K8;
	Wed, 18 Nov 2026 10:34:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTczW-00000008ZDS-1biP
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 10:34:16 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AI9kLIE1436976
	for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 10:34:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=iTvIF9xRP0uN+SwNc6JxvB4VOROFp75+Uu1
	hHT20jpo=; b=SsUiiGMGFDjlwS1UaGh9zeibIhBketuh9WeA49mEAL/ADORES8Y
	iUbrjH1tJGc3PL2ha38JwViu7+QmcF0G4Recl2WhEJV5hc6D/NV9kTmayG5a0T2/
	silql2KTqHKgTfd0IWSMWqNr8hZUDk/fcG381Qf8VVQ+Rt8S5BS40qzEGJ6t47vF
	ZnBnUK/5ubwdzebofwo9ndz4R1GtIxp1Q3NEl9EbK9fzc+iTnE6WGgzQRjN4sQ3y
	uMcJo+WcNQaS3QUCxzx8W0Ln5vpeYkWHf7x3rVVWoh+kzrfVWYRcho4md75VWERd
	9KV7rEp3FuGLUS6XOrx8KajCHFpWECHXF3w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j0yv8ahrn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 10:34:12 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-9495af07676so145081185a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 02:34:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794998052; x=1795602852; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=iTvIF9xRP0uN+SwNc6JxvB4VOROFp75+Uu1hHT20jpo=;
        b=WQwCcV8p0tpAdrPnOccqoa56ezbIV4+JlFdT2hYf8Tbv6it1n5y2OnHufOa/GQHi7g
         nRhmbFGaXIhUX0Pc9KP33WcUztY0ejVXmcSQWwTnAdB87A8KMG14FsuD6Lv5ykKnCXna
         HQdK9kM4nIlv8VmTKAgh1VibFhwV7miWnr6s2UKASMF3rMNZU+TWGNwDDcQZuSi9hIQL
         Ov6im1TYz47VdEHe/A1RYWh5lh8O1bu5y+va0a7zxfudJu2rfGMHTB9oAyWL/3ENIiFd
         6nQNuxDiQSxu4AIiZRZdg3ZYaseH94g8xcInG1AQ6Oa3kFAXeGnDra/zpuTUWgfHYosA
         RnBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794998052; x=1795602852;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=iTvIF9xRP0uN+SwNc6JxvB4VOROFp75+Uu1hHT20jpo=;
        b=Hq58VUfboAvTqYsjhUuihg8u14rw9UExIVTceBLJPMdFU8LkuXYiyCDU0wVz5Irh8J
         DjhFXsAXsCAZasn4cwhd/N2ysInusl5DM+cX67EUTi35v6Fl8WH6op/U4bCY6G/mRxp8
         g+hyefNEe16baxlAEhdZ9iwNVu7uuPKZN3Daw9IxoQTlb9mMzEz1aeSE8hUVG7RRADqx
         spMBzNrKgeOWxQBBtEhQzdJiDF2O8zneFpXwzCVJccQr7ypljSWp2sgnHydfsmZiTQFL
         Lk7p+RV9PD64ip8JEN5cgxv83hvSxD03qvO+PhS2fpvdhUjHdaKxzSLsYyODSUNtj6B1
         0p4w==
X-Forwarded-Encrypted: i=1; AL+hErGIJ7rpPglrZj+kC8N2/FyM1eb7h4b9cPI1d+jI7I1dxMkRpVHslkx3SQQKbGsv8OqsDHqC9N+pg/gFxydJCw==@lists.infradead.org
X-Gm-Message-State: APuU4Z93ynNSqZjefVJojUqo9myd8HnGYMbPKQMXPMnR/MD1xw4XNv2R
	HCrC6iM0uZgUPMXVABZxMp/OZk9t3e4DwZFdt4gYDbySC+OP52p7zaz3iygsNci1w5HLzlkZLAS
	63io0rOIRq2GxHzi7IQRsrAFBEUvr9JpxW1YfKnXRL7lc6WtSOrxT0RKWDjFQ01g0zoktZnQ2Nl
	k=
X-Gm-Gg: AYBFou22KOBJLlSI2GSQw2ZW5yWxJyvsyKw24KZlmc4NUmk4403F9pXQ7/hSP5Ib+HN
	E1c/l/brpwRjwD5/Cx1wOe3JdKXwVtvyki7rLxox5Ojze6Zwf+2m8Ukc2QXTTUpaCa4SJKAzxvy
	StSKhu+UQDO1gn5CdiuSvsl6H7tMs7zQlFwKeBYfSV4veb+TdOyeIw5NXwslFFZnsXHo72AQs7F
	cb9N+tdghlOE49wutmZ2FB6i1y6gzS6GJhkznhduoXGQ6x+rY+JBtL5LOz+0vuw2CPrM1xyM4mJ
	FkUh3eGsjz/wVBiAS/JKxd55k+HbWbH9IGr8M4yaSd8jHkbydsrVnh+2TadKxO4DBWRL9xOA0ud
	gxjLPNIKZ294OoZbMOvLVF70YdYUfy3F5Qy+wB60bst8cYokJiiZc/aBh3Mw+QZyoGermpM5twC
	UN
X-Received: by 2002:a05:620a:3710:b0:949:6ece:8aff with SMTP id af79cd13be357-94999769dfbmr380050585a.55.1794998051844;
        Wed, 18 Nov 2026 02:34:11 -0800 (PST)
X-Received: by 2002:a05:620a:3710:b0:949:6ece:8aff with SMTP id af79cd13be357-94999769dfbmr380046785a.55.1794998051378;
        Wed, 18 Nov 2026 02:34:11 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:d355:fe70:14a0:ac8d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4a650d2ecd0sm4519631f8f.8.2026.11.18.02.34.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2026 02:34:10 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: rafael@kernel.org, tglx@linutronix.de
Cc: Andrew Morton <akpm@linux-foundation.org>,
        Peter Ziljstra <peterz@infradead.org>,
        Bradley Morgan <brads@mainlining.org>,
        Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
        linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH v2 0/2] powercap: idle_inject: Create threads on demand
Date: Wed, 18 Nov 2026 11:33:47 +0100
Message-ID: <cover.1794992905.git.daniel.lezcano@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: AOXHeXp9KJpv37RZf-xdHrm8I5PWiB1o
X-Authority-Analysis: v=2.4 cv=N9u8hG9B c=1 sm=1 tr=0 ts=6afd7f24 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=rJkE3RaqiGZ5pbrm-msn:22 a=Z4Rwk6OoAAAA:8 a=VwQbUJbxAAAA:8 a=OuZLqq7tAAAA:8
 a=x1L0ys6JoTQEvF2T-JwA:9 a=bTQJ7kPSJx9SKPbeHEYW:22 a=HkZW87K1Qel5hWWM3VKY:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE4MDA0MSBTYWx0ZWRfX9CQd0Yk5YH7L
 iOmpBOrSgb0w79L8GWqpjS4LR5FQLrAW6HzY4/0Kz2PvJZQqN55DUgV+FFz5HELiis/bzfjIYaI
 GfX+9q2IbtYBECueCWj8rYp40TW6O4tddK8A8NdIPhaH+GN0SY89z4sFMKkwoy7lDl2bIC+ANhj
 0f2QKDBf0SqVUwIrmqciC470Ix6/4v1FyRqFDyScdSnEY2y/DCdOU2Bdl3MlaBvsmz0rsZrA0Qk
 kGUmAzw3foZM30d+yc+2I3pNjPTj/ZdOFUBHz8WKqEBNbtDJ7SIVFa7CXt1tALcfi2oV+yhnVVN
 FfypIv6KieFHNbXSXKf3WRTcHZmm/Y8ybOAW3HeCL+YSVhmEcQiyXP81/S1YfbsX7uPSido2jcp
 0l3f1W81DoEqqfTp2rrE3+laKv9ZYXtijQXVaPu0tsI4X74nBODymhyyZAXEoJj4FRZ7vNoTye2
 aeG+i+PaQ8ZEompQJgg==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE4MDA0MSBTYWx0ZWRfX63vHBdIb/YlD
 Ywbwi4qEr6Y91tscZmeVPdL/SXp1UCyFJyoiAt4CK3R69OdlNMX5BfCx9nkzFzPLDiY8a+jQlmG
 SzkXwpC/Z7m7evzGz+UYhzqCjG6VsmM=
X-Proofpoint-GUID: AOXHeXp9KJpv37RZf-xdHrm8I5PWiB1o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-18_02,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611180041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_023414_544270_B017178E 
X-CRM114-Status: GOOD (  14.75  )
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Idle injection currently registers per-CPU kernel threads during early
initialization, including on CPUs for which no idle injection device
will be registered.

This series makes thread creation follow the lifetime and CPU mask of
each idle injection device.

The first patch adds an optional CPU mask to smpboot thread descriptors.
The mask restricts thread creation, CPU hotplug handling and teardown,
while preserving the existing behavior for descriptors without a mask.
Registrations sharing task storage are checked for overlapping CPU
masks under smpboot_threads_lock before any threads are created.

The second patch uses this support to register idle injection threads
when a device registers and destroy them when it unregisters. CPU
ownership claims, registration rollback and thread teardown are
serialized to prevent overlapping registrations from sharing threads.

The series was tested on Rockchip RK3588. The updated smpboot code and
idle injection code also build with W=1. Concurrent registration and
CPU hotplug runtime testing remains outstanding.

Changes in v2:
- Reject overlapping smpboot registrations sharing per-CPU task storage
  with WARN_ON_ONCE() and -EBUSY, as suggested by Thomas Gleixner.
- Default a NULL CPU mask to cpu_possible_mask at registration and
  remove redundant NULL-mask checks from the lifecycle helpers.
- Use scoped guards for the smpboot registration locks.
- Document the overlap restriction and registration return values, and
  update the core commit explanation.
- Add Bradley Morgan's Reviewed-by tag to the idle injection patch.

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Rafael J. Wysocki <rafael@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Bradley Morgan <brads@mainlining.org>

Daniel Lezcano (2):
  smpboot: Allow restricting per-CPU threads to a CPU mask
  powercap: idle_inject: Create per-CPU threads on registration

 drivers/powercap/idle_inject.c | 69 +++++++++++++++++++++-------------
 include/linux/smpboot.h        |  6 +++
 kernel/smpboot.c               | 45 +++++++++++++++++-----
 3 files changed, 83 insertions(+), 37 deletions(-)


base-commit: c03c1a14507dfaf8b856c2608f9ac216021fc222
-- 
2.43.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
