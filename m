Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F849606A31C
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 16:17:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=YPzv//UX;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=TpSRxbv0;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=ZDZWfroi
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=x31PPm9EtolFalHAi7lRzKXEVUBkUCjYLuVHWwNxrek=; b=YPzv//UXwKZSSZQ/kKlxhUxrUq
	GsFPqgtrSVgVrtTQSBdheAZwwlqGXfIl2oGxUNGSzXEJjtzAUvf3jaHSlcTEgm751j5pySUxgcbAw
	ppi8pE9f1mKY2iw13jVMuX9S+ZWQVamFoloxve57PyNsXV+ptUEWKm/lXQbTaZg0zgqn9fpAn72gh
	/x2dFuSiQBoPmeypgxci70vtPYj79ZOEumoZYcXcInBwV/QouawEbBKY2fXG6oBdEZtQ/ifgbebb5
	ze9WWGLQEzR7R9LQum1/RiEcPkX9IL80y2Dx3uEfaf3wnvxcoXP6GNNLpI3sa6gbuDl/QWJ50RYem
	ngRiI5gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTiLC-00000009Qm9-2zCc;
	Wed, 18 Nov 2026 16:16:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTiL9-00000009Qju-37re
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 16:16:57 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AIEIDS61431822
	for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 16:16:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=iTvIF9xRP0uN+SwNc6JxvB4VOROFp75+Uu1
	hHT20jpo=; b=TpSRxbv09hrbhgSonNLCOwk+MS7oGBadtVKM++L5ec7fAptEewo
	FVMTMTrDhoTtW2NO/4/YK82Ee7wiUbgSNcNz18h0t6fSQNKunnJ4dIp7e4O2NYBY
	37CN4Ry7FGuR8yn8tNVfevW5+Rwng9zBK7p2u4aZZOz51PJZcPeETcbsCFas/pDl
	hw5KRSFr7naDwvmfU8M9AghqD2YREEwyNfoDBaEQGVwCOYC6MzKftNhbrbLd0hSJ
	gfrIa6dnATeR1c2dRNHaaxRU6rb7rqwyIXZOaSxH/+E5UV+HelYZ+ceIjwH5Jaxu
	8KooB8qHBkMqfsf2w+VxT+og4RlV1MLXaEA==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j1dnrrmbr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 16:16:54 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-5ece3cd5a00so734595e0c.3
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 08:16:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795018614; x=1795623414; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=iTvIF9xRP0uN+SwNc6JxvB4VOROFp75+Uu1hHT20jpo=;
        b=ZDZWfroiLjja3PlYAx5sp1BKsnHSSTWPNIVR6mLP2jcjiuvCHQq3vG1C7/IQJ2frPY
         FKYgCafoQAk3wl+NFajANkYVPQy6ryey0z71zxn2tszJmcNruJGZwqQHeOFTwOABSddu
         L2weKpGgJZVQEAaAwupcR/HIyNs1HKd7otrCp31yw4euGQsLJ5kF7Fb12MQeOJmVrDhm
         K6kj6YAfoXrWwVVdCW13/0dkjmvCKUddaoHK/mL4bKFzmXnM2DD5YSViMr2ukMkQV6DM
         HgCTtqPxy5SXrUV+H8GN7DQh7f7Yw8l27PeL6On/ubAupvT41e7bliZsYy0lmRjTkQdp
         Bqbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795018614; x=1795623414;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=iTvIF9xRP0uN+SwNc6JxvB4VOROFp75+Uu1hHT20jpo=;
        b=ovlLfJcacRGwLO8JlCJ8fSo9BCnmFNaR1oAMRgga6F4wqNRpnBAuZahucJ2d0t+ll1
         /K7JEywveK+J100HxkjnEiiqcOfQGQj5PPP5rv7TnC7p/IAXmLt5KrGoGkIBOwFuxk4K
         CNA/bwSnO/DOVjZovipy/gF3ldnMEOMbJ3RNwFpPkktKvnAMawgPSDnjCLqOc9HYe/tm
         xOPkfGtCQAS6Uhech4amRZRmITzIcjuhqnqlT9cCGgtPCtnUWEEKTa3SUH5nG/khE7qz
         HU+J3+4ywCWAmLdmP2+GPcoLPq3No+gKzc89ZynJhWYhEnoENeedjAUJDJAdZ6X3Y0L0
         dzXQ==
X-Forwarded-Encrypted: i=1; AL+hErGQ9n6eOVBVmT1pUTLgEbD4N5MtMOpuLd4YDR2qfee7VIulKBzeCHlFfYZC2H4m/tlmcIDVHOji169hN/k7Ew==@lists.infradead.org
X-Gm-Message-State: APuU4Z/GWYQBRl5QKFh/ssMcAhxBwvW4ZK68zxee83CPV6IC5O58Qlad
	nUNm4Jd0kFblpe1dZb8cHsiNLpr952pAXi5qaeDlATYOxO9vSFdX5rfxicozvM+Gpegr2Xhrvuu
	t8BhW7Jdesygp5+JVkgVdw90sxf4C+f54+jIwbCzH93bHQTPBY+ki7O/bpD548naH+PqGo/Zahc
	E=
X-Gm-Gg: AYBFou0aRgSnupVOnWaQP0kyoTYWjvZX9LzqlpJylEWKl8sjTU7zZoOqXl9dip8Q5zM
	sa8ikFZtBBTHvxH5nvUlZrncms0C/GnN5U3qHfJldANGGMh6/KqWyfsavuakD07zTY+Iy6ctRvk
	8jEvCOyDdrQ54zLobNtoyAFw7RPwxhBzxPvD8G0m1pnCYmOrurh8JnHqNxsKGq9gRCj2jooMF/t
	XxIfMuXiaSL3KUzwlkRX1qOcG6tSLQQWXAuKLWjbcFp240aId0YyGJqewpxMdQKJm0xo/U5qXlv
	3bECMZhiKZEGyJXsCRFplv4koNiN/VJbxupUzPl0HrNIQMp9GOWxqQd6zN2qdKIvQ/p4Savp17W
	UopvWvX+oNjxs6nAi2ZMhcouQ/Ph7A60FI8uB81TiYfPKabDN+RzZwkhin1GZggjxi11uS5pC0Y
	+x
X-Received: by 2002:a05:6122:1d48:b0:5ea:d2fa:c2e6 with SMTP id 71dfb90a1353d-5ee646fe5e0mr1635598e0c.14.1795018613847;
        Wed, 18 Nov 2026 08:16:53 -0800 (PST)
X-Received: by 2002:a05:6122:1d48:b0:5ea:d2fa:c2e6 with SMTP id 71dfb90a1353d-5ee646fe5e0mr1635579e0c.14.1795018613364;
        Wed, 18 Nov 2026 08:16:53 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:d355:fe70:14a0:ac8d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb78418853sm217090495e9.8.2026.11.18.08.16.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2026 08:16:52 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: rafael@kernel.org, tglx@linutronix.de
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Andrew Morton <akpm@linux-foundation.org>,
        Peter Ziljstra <peterz@infradead.org>,
        Bradley Morgan <brads@mainlining.org>,
        Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
        linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH RESEND v2 0/2] powercap: idle_inject: Create threads on demand
Date: Wed, 18 Nov 2026 17:15:25 +0100
Message-ID: <cover.1794992905.git.daniel.lezcano@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE4MDA2NCBTYWx0ZWRfXwEvz298jwezw
 hqvKpvuHaKuSUZA9NsZ19kGARMji6rfnp+pwG1QoumZz+b/B/n5zJMMJiKNBmxbRqSdZJOYxaKI
 78Wc58CBeNQg0zjFsOzNurpGuNmmIs6OuKM11nptF9p2PHIjP39zhWwnw5eiYLRl75bB6ULjaLq
 vl550mZHHj5icO/8x0ybrxNFQ6lHBQE5fVmodQsMUNCdoAyexziPx62iEoTsEoLi3x32Rv7Xfa9
 uGiVq7pdNm1U/b17xZS2ecpozqMxhVffr8IqZG7k8xs/JtbKJhZ849pGVORmKkEoufXktYskJnm
 Z1J1zHovtCtwUL8AhzWZhXIA6eF9AaM7x/wxX/Zyrp8kfNdPOL6WCY/2C9lY104bxdKRLE0yTdV
 YaVcmA54p6+oiKBOF1xEZSsLx22z6afguPpVZ/ZbthBeY1kG4HIALrikLNIY6dOXRKISEbzJCnu
 NVmTRV9ljsWFBaV4jMw==
X-Proofpoint-GUID: 4weZ-Y0L1T7zSzbvsyPMjN1X8XFkHwJ_
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE4MDA2NCBTYWx0ZWRfXwccQHJNBRAOH
 D2blct9yX1fj6h04dK7+5DXgo81/zVzNrXcMCKMbn4MEgvZ5yDcLvX86aHJGQe+WxygC+cWmN95
 9jH1Ubunx0y12C5mQel3szP3svQBZMA=
X-Proofpoint-ORIG-GUID: 4weZ-Y0L1T7zSzbvsyPMjN1X8XFkHwJ_
X-Authority-Analysis: v=2.4 cv=bfH+w+PB c=1 sm=1 tr=0 ts=6afdcf76 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=3WHJM1ZQz_JShphwDgj5:22 a=Z4Rwk6OoAAAA:8 a=VwQbUJbxAAAA:8 a=OuZLqq7tAAAA:8
 a=x1L0ys6JoTQEvF2T-JwA:9 a=XD7yVLdPMpWraOa8Un9W:22 a=HkZW87K1Qel5hWWM3VKY:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-18_04,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 malwarescore=0 bulkscore=0
 spamscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611180064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_081655_900006_82D31332 
X-CRM114-Status: GOOD (  14.91  )
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
Message-ID: <20261118161525.sNiRWKbl-kcG3prb3qkJfdq0j0kTSTmUj_d4-b6TgKU@z>

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
