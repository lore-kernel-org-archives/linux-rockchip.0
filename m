Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BECB6CCFA18
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 20:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:From:CC:To:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OYWmxZ9L446ClaRXQbpz4eMI3qYC9fDTSACJuVDlBb8=; b=Y14Z+m9tLGtM1/
	DZ5h+8Z61n0KS9i0aMYeWju7QbB1mAJjL7dIiGrXxS+KrQ8J1uUg4kjmsb7aY8W7fiVdBG10LyqL9
	p7H/jwA02TZyxyj/T6sMT71c493mwZ/L6R0ntFy1ojBTkwpudhCX8cDRITC0hSZy1x98iOm62RYJI
	0KLhrHMMOJGAfOQu8/6IXFUPx7VIXD3PD/neTTqUBjtunoN12WQlrnG1LyNWbu8gzn3B844qxGKAD
	1Rw4leAVDUOpBAcVkTOfryuxRnCjOJgQNJYCna+gPGhAt6mnZx8PGNCPI4zjWdE3F13qkZzCpN5cY
	E18Wzxw2rG+ACGDVCMXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIvQ1-00000007leh-0INp;
	Tue, 11 Nov 2025 20:56:49 +0000
Received: from mx01.omp.ru ([90.154.21.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIvPu-00000007le6-0fY5;
	Tue, 11 Nov 2025 20:56:47 +0000
Received: from [192.168.2.104] (213.87.136.181) by msexch01.omp.ru
 (10.188.4.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Tue, 11 Nov
 2025 23:56:21 +0300
Message-ID: <40da59f8-10e9-49b0-9f25-1474067625f6@omp.ru>
Date: Tue, 11 Nov 2025 23:56:19 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
	<heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>, <dri-devel@lists.freedesktop.org>,
	<linux-rockchip@lists.infradead.org>
CC: Mark Yao <markyao0591@gmail.com>, <linux-arm-kernel@lists.infradead.org>,
	Karina Yankevich <k.yankevich@omp.ru>, <lvc-project@linuxtesting.org>
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Subject: [PATCH RFT] drm/rockchip: vop: fix simple case of window scaling
Organization: Open Mobile Platform
X-Originating-IP: [213.87.136.181]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.1, Database issued on: 11/11/2025 20:42:12
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 0
X-KSE-AntiSpam-Info: Lua profiles 197978 [Nov 11 2025]
X-KSE-AntiSpam-Info: Version: 6.1.1.11
X-KSE-AntiSpam-Info: Envelope from: s.shtylyov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 75 0.3.75
 aab2175a55dcbd410b25b8694e49bbee3c09cdde
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_uf_ne_domains}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: omp.ru:7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;127.0.0.199:7.1.2
X-KSE-AntiSpam-Info: {Tracking_ip_hunter}
X-KSE-AntiSpam-Info: FromAlignment: s
X-KSE-AntiSpam-Info: ApMailHostAddress: 213.87.136.181
X-KSE-AntiSpam-Info: Rate: 0
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 11/11/2025 20:44:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 11/11/2025 7:32:00 PM
X-KSE-Attachment-Filter-Triggered-Rules: Clean
X-KSE-Attachment-Filter-Triggered-Filters: Clean
X-KSE-BulkMessagesFiltering-Scan-Result: InTheLimit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_125642_210780_88332461 
X-CRM114-Status: UNSURE (   9.79  )
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

In scl_cal_scale2(), if the dst parameter equals to 1, then division by
0 will happen. Actually, the whole {src,dst} - 1 thing is caused by what
seems to be an error in the Rockchip manuals which say that the window's
width/height fields of the VOP_WIN<n>_{ACT,DSP}_INFO registers should be
used for the division verbatim -- and those are actually 1 less than the
window's real width/height; so scl_cal_scale2() returns expected result
(0x1000) only when src equals dst...

Found by Linux Verification Center (linuxtesting.org) with the Svace static
analysis tool.

Fixes: 1194fffbb102 ("drm/rockchip: vop: spilt scale regsters")
Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>

---
The patch is against the drm-misc-fixes branch of the DRM kernel.git repo
on gitlab.freedesktop.org.

Note that scl_cal_scale() does look buggy as well, but I can't figure out
(even having the RK3288 manual) how to properly fix that (it's only clear
that -1 should be removed; perhaps Mark Yao can help there...

 drivers/gpu/drm/rockchip/rockchip_drm_vop.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

Index: kernel/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
===================================================================
--- kernel.orig/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
+++ kernel/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
@@ -360,7 +360,7 @@ static inline uint16_t scl_cal_scale(int
 
 static inline uint16_t scl_cal_scale2(int src, int dst)
 {
-	return ((src - 1) << 12) / (dst - 1);
+	return (src << 12) / dst;
 }
 
 #define GET_SCL_FT_BILI_DN(src, dst)	scl_cal_scale(src, dst, 12)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
