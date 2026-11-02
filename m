Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672BC606A324
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 23:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yMLzSU8o;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=e+8ZH3Gz;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=KhKMSO6l
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=mUFykkUq+DL09txR2ZXlGyC9W8nVAYABmi+E/o78ePQ=; b=yMLzSU8ogvaRCLS0O5FRnwKsDR
	hm0XkPAoZsLk7VvPg9EH2g5oH8ug39lMFFnDGZO8xYfBcUI/4WKc5c5G0e1v0VUjLim0pU9AbUuYE
	OlBxk9CpA1TkOxHkHFN+bQW3dip4tL7o6dm+3y6Rt1BnPCEiKy4gjg66rim+73bKcHTmFrKqTHOmh
	BYe9EiTItWl72armlD7lS1dGttwIluFN/xPceyNrOCBNOwn3K069wzMrNXq2FPrT95OVSwwVcP6fF
	AHDlK8zxm6o9XDitTweiZxzrnb884U7le1aaL/6UTPbwR53ko5XqJ7FMPXSzyXp/P411+oqmjGG06
	e6cQ8MsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO1Al-00000000cBw-2RJy;
	Mon, 02 Nov 2026 23:10:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO1Ai-00000000cAY-35t3
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 23:10:38 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A2K5uHm3955570
	for <linux-rockchip@lists.infradead.org>; Mon, 2 Nov 2026 23:10:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=2hpKOPWbbpZtx65mqGSUrHqwHz0eW4DLpqV
	bN8K+PsQ=; b=e+8ZH3GzmW0KMCN2lbOu3nwAEU8klFpSYHiNrvU2+JzenL3a3sZ
	RkBnUwaAg9HYZZ7YLDpgJ6IhKtRkueoQ/rjCWTcwyfpnI+EC4PvV3weQ00NyxNoP
	4XTdwCVtD5CqQO6ZCIFkdkQiXHVJ2673nOxWQUlo3Th/5uV3V/fyk24LNEVur9LU
	eCGCexERjBP2dcLrmIQpBmqKz6b4hJpaFxI7ERkAMvxs7bUS0Ynoyr5BbPx7s31F
	CmoKSeHD3xBdmqT4MRlnN7SY1Fdoc1Y5fd6FOELDP802UCaGTIKdsJAWYqA1Igyg
	eK5X4+Kw+gGuQzfK2XqXMwuvjAsFhSXoT/w==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hq081rvmb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 23:10:35 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-91c71966998so43704976d6.1
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 15:10:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793661034; x=1794265834; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=2hpKOPWbbpZtx65mqGSUrHqwHz0eW4DLpqVbN8K+PsQ=;
        b=KhKMSO6lDo9C0bDRyCyp1+AhdQka7zTNIO0OgG3F1+G4m1w0Kfmpg2LkWG5Qt0mFg8
         TgodMTsMlTx/+sPmliK/kFo+MPhMMUacw7w2Lh9PwctzZkSA0P2/t/3iAzmJKSlfpman
         juyjwZZfu6IB73wVHOXO3Wr9QT2sM3/Uve0od0+VFAMbYPI1lSxyV77YEoE2lAFz0CIw
         cZTTu0Klvrd5Oxc3SuFPWEOS04LVLZu6/uRiQKsu87rj+WCTsmxrqV/T9wd+I7iqHgJL
         NFTexXT7IdWz5EspDses6inMOVr3wBNpxUy7T1fd72SZ4OkWeyGWqRBe5zfkH///Xg2r
         DE8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793661034; x=1794265834;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2hpKOPWbbpZtx65mqGSUrHqwHz0eW4DLpqVbN8K+PsQ=;
        b=k7vpRJgTfpGWZVo3IMzxumdHw0llYkyNDqmZilMoJvz5p0/fyDxz/HbGLaLBwY4boh
         AjgQFxLNQVTDjlS7i8cXYleBTZfDYghN0TkyeS3icWZYMwmyy1Hvn8GmaEghkpfhuyGz
         0aNQ+WfxDXFSTovfggknj2VpG+qvl11n/LsuHi5J5dFAcAkWt6+lN2/rOsNI/0Zg54c1
         pTh1ZgGHqtiTwhZtQ14JO4W56vLxGe1KyiTdWfx9ZQ/eaFMcDlqDdMC1RwTDniIZlSOf
         N1ArE9ZCKWsATbOdDOjhatU66e/g39Uq7PjITzjjn9Y/XfBS9Mtm8enOQ+1zeuqZnPLX
         WZow==
X-Forwarded-Encrypted: i=1; AKwUvBxCYeoIAmwrux9IKfSGdxrZ489CuEEanJds2lIyj0+hGEuEqb18maURniCe6VyS4JNCv2EMgbLM5nf/EEyEnA==@lists.infradead.org
X-Gm-Message-State: AFq9FYJHh/b9C+UyyjAfz4jbdlgS4jFssCBpmvw62dgQG+u1yGmMbIRj
	PueqVVvop54H+rXmzQZ+S5elu/GMDi2YEXUwwF4V4ewG6zgUEFPn+VLksQomeZLpZmXVHKrz7MK
	N3km3w39G3XifVzUlmAn8nVQvY0xXRwx5ht7PHXJZ0v4NRDvQB6eG0qM88H/I9E4wqw1kRkRO01
	5f2YVL31HpxA==
X-Gm-Gg: AYBFou306vU4Ct6xqPmbE0Hdgx4ecVCt9H8YwjDSADimU7Gjhl9JAwv0ANoymsCMy8N
	a6wePz1oGIh8tRBziayOuecnlqOplNviG8bs4L2oVG9gRlO0aJlyraKoo2/fovhp1vZuJQtwxUB
	QUC5P3bS33/mErnCjFVRRfkOM4a/WRvNScimwtBrN2cq3mSULjZ/vy1zJWDRi5/Hw9/2Z4Chm7v
	Zu4ei8xT3ZSox5xOu5SHU0Lr21qmWQ5R1H8GQjmg0a2aGCLB5OivkP7Rs2eofESltlYUZJX0e4l
	KKBULMlCxOg2oqjteii45/IdRjqKR3tYx2ZMZuyMRgIqGyZM0Vm0xF5eVPmWY2O5opPxngH+4Hn
	sIlqCGMIV384nm6VPQmKEudn5pacqH/BkVbpRKoKesdWYsxvZ1+/I8eBqIVOWSsVoNP/6DDpjgR
	7L
X-Received: by 2002:a05:620a:472b:b0:93e:78b7:fa4e with SMTP id af79cd13be357-944216ff106mr1886016885a.37.1793661034320;
        Mon, 02 Nov 2026 15:10:34 -0800 (PST)
X-Received: by 2002:a05:620a:472b:b0:93e:78b7:fa4e with SMTP id af79cd13be357-944216ff106mr1886013585a.37.1793661033794;
        Mon, 02 Nov 2026 15:10:33 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:8b9e:7797:dd05:11cb])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b2a82cf248sm25198725e9.2.2026.11.02.15.10.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 15:10:32 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: akpm@linux-foundation.org, rafael@kernel.org, tglx@kernel.org,
        peterz@infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
        linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH 0/2] powercap: idle_inject: Create threads on demand
Date: Tue,  3 Nov 2026 00:09:39 +0100
Message-ID: <cover.1793660202.git.daniel.lezcano@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDA5MSBTYWx0ZWRfX8x5VYOq7gtHe
 wUxSC/6nSqKJLcoYJgWOqF8LsORSwIFrrxrr49ehPThoi7FfAMhr+f3yWVoa4oMUE2idsW8VtpH
 WG3Bf3P93JInojOAkWRG5jApXJZtl5c=
X-Proofpoint-ORIG-GUID: 5xUJjhJ5qqycS2-G1_ZrcGDANFAzFZOD
X-Authority-Analysis: v=2.4 cv=F73C5ahN c=1 sm=1 tr=0 ts=6ae9186b cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=YMgV9FUhrdKAYTUUvYB2:22 a=Z4Rwk6OoAAAA:8 a=VwQbUJbxAAAA:8
 a=QY0LLLZMJg_iqbFvK2wA:9 a=iYH6xdkBrDN1Jqds4HTS:22 a=HkZW87K1Qel5hWWM3VKY:22
X-Proofpoint-GUID: 5xUJjhJ5qqycS2-G1_ZrcGDANFAzFZOD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDA5MSBTYWx0ZWRfX8UQJPSC/AzGI
 5dWFOglFDZ5qcwyEKBw+G+fWiH8TiKuAfJZ6+lzjL5u9widD4mEunKDCDmaPlu1v5+hMEBY/4bg
 xEO1IpO9vEkwIwacY/0BNyyuVF5oSA4jOUsCIQbYJbTvEub9TbjTBqTRQX6+Or/rFOuCCPwcHJA
 QtDB088b6ZhFOx3/1l9UZLXTRP1LB9bEvkWM75+tu0UeiKJfIEAvFAAE8wZkC24PvDw6VDgwC7T
 QN7vrNLSckLYItbXUt5A7SnkEGw8kb2g/Ts0oliewyUL5HPp9NWSjhfX6nvP65gGhupeU3c9KVu
 SqTqQLWjDezHKI3m7sGlnTz6lPJqORLwN6uN/TWpph87qedgc5kQmiWZn9ycgmoKRznz9mzOaUX
 DkWHacYdG/ur5U4uD6OsrJAS2oHV5WOiukQjXSH/9+ozhMJgt0x8jGLWE6MigkVOX+z1uN1ZUox
 mnGNOrVXgTRon+keSnA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_06,2026-11-02_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 clxscore=1015 impostorscore=0 adultscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611020091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_151036_801321_ADE01D96 
X-CRM114-Status: GOOD (  12.96  )
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

The second patch uses this support to register idle injection threads
when a device registers and destroy them when it unregisters. CPU
ownership claims, registration rollback and thread teardown are
serialized to prevent overlapping registrations from sharing threads.

Validation includes W=1 builds of the affected objects, whitespace
checks and static review of the teardown locking paths. Concurrent
registration and CPU hotplug runtime testing remains outstanding.

The series was tested on Rockchip RK3588.

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Rafael J. Wysocki <rafael@kernel.org>

Daniel Lezcano (2):
  smpboot: Allow restricting per-CPU threads to a CPU mask
  powercap: idle_inject: Create per-CPU threads on registration

 drivers/powercap/idle_inject.c | 69 +++++++++++++++++++++-------------
 include/linux/smpboot.h        |  4 ++
 kernel/smpboot.c               | 17 ++++++++-
 3 files changed, 61 insertions(+), 29 deletions(-)


base-commit: c03c1a14507dfaf8b856c2608f9ac216021fc222
-- 
2.43.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
