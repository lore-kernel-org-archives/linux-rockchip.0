Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB45606A32F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2026 09:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RsuNX7eK;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=VJjoPXSN;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Por8Lfnw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jVROyh54ml2wG+Wt+9OsJ/cemsSaqDzZ+Jl3QPt5znE=; b=RsuNX7eKd0D9cEHVDLd3T9ZLt9
	E6k+SmoTbNZE0GSxB7SxBde8MHh0VlXA3aYjsgRT5MtTAmnYGbFF29U/7ZugHtGGIoDG2VNsJeplw
	Og3c7cbxvgaZXW0llaYTCRF554p5Yfvha1N42Xlm7eWzlcXoQztnz3jugTxbtZ8b+0g2FD9Pa8hZ1
	Y7UNbrj7UPTaqdSaL+hQCiGvrvOdGaqsoTncYcHAJdfgJGB4feT0I8E34s3pj7gCBtzpF7GplytM9
	MEOwiIqdT9j4SIg4aEBcX2uGVz951pMynetIsSxKZg3rpoKc56KISwpSjwXHRo5HJmy9JrXEZDpNS
	iX4EI4Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLzzl-00000006fey-2RYZ;
	Wed, 28 Oct 2026 09:30:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLzzj-00000006feA-16F1
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Oct 2026 09:30:56 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69S8K9mE1642933
	for <linux-rockchip@lists.infradead.org>; Wed, 28 Oct 2026 09:30:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	H9WSVSzQM3gxoBgbW5KOP7ComFae578ztsE1a3gy6yg=; b=VJjoPXSN9HaORW0B
	rdlqrIiuJJPmf+hFREacFInMjBSuffov0c+nPWdcB6GxYX9lzR0vMreJY31GbWm3
	TjgcDz9pCJKT9Wwcog9BhQL+9XV1fPyULxOYARs+hAbH01l7Nbb7yetYf186N3e6
	oSCWXrmjD5x0gl4Fhj286Rqpzu1t76Pl/Zsq+YGu83gpr0GqnYMxhY66OVJ5/wAL
	mQvb5c78yoyjhJA4B++5G8iP+wePlRuXFyGvh4MpGPNa2xE/ikt2YKIK1z/kfUlI
	YSVd3DFtOGN1BeQlbo1Ojz0cHEm9L8/JqqRxdxlIB5G88QeAGoAvJATC42dTyXJr
	4SvpbA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hjyjpub31-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 28 Oct 2026 09:30:53 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5338ff2cf14so16404741cf.1
        for <linux-rockchip@lists.infradead.org>; Wed, 28 Oct 2026 02:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793179852; x=1793784652; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=H9WSVSzQM3gxoBgbW5KOP7ComFae578ztsE1a3gy6yg=;
        b=Por8LfnwpMqAqZljfzuHXeSDXavRXyODproJZIixcJOiK5cmYXOEIqgJopiHCFq7zg
         v4y4LM07BqFtjvHdOs4NFYupJ8RzyNKnG3YaRofiRIo8y0roAV2dWGhtEGMI40S9FdPf
         65QlFcOZKHu3qmNOtP3CGvwpc4WqRCjJNkqi9y3T6o4idyZ92GMdkUwxz+Ys3Du6DbKR
         7f+GxUVzm3K9S2YrT9RXDSoYwwXqQ6qc6Sa6ztHYGL3e2aqV4tNW4/E9WTzaE4b/AwsY
         paTvsLU2lMIyknwo3N0US85+efGZdFQ9/nvlZsnRia3OEsDma5/v6zXoe1pNzID6ggSZ
         JeCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793179852; x=1793784652;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=H9WSVSzQM3gxoBgbW5KOP7ComFae578ztsE1a3gy6yg=;
        b=OWborggQR1q6/6Ahz1DxJ8hFKMr4yOL1aqknpm2dJHdUAqavgLFrk6Ec0uaOsV3MgL
         EZtMl11eZSyUSF7WWaD1VZtbjrSquvFSs2TwHhqT8e2N72uEVpIV8XSYHJ9OqTxar13n
         ECSUFGrjrqLCbLn6ZhbfA7B7n3ljlD5fOijetaUj0V1IcltNKwRA2xLwlYfe8fd03kXK
         hQbamY/8hrT+UPR/Dj/3wkXId/UdCO0FfvWxaTfuIPxFvu0l4hk/gaiVPKYJvPFt/HtX
         VW+w3eIjIlNlYyj+PBCPOIV2a7E6Mi0YYqxjc9mnxMG2vrgRzu40xic2ryi7xesDhPRb
         ULig==
X-Forwarded-Encrypted: i=1; AKwUvBxLBp+FyCwEQwc+Bh62SDKk3O/O9gQcz8b2zsxNXMwQVKyAAFTb3kFxcK8wyjdBOsFeMEBp2u0Q8enq+lPQoQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYKPydLINedSnnWD1GSM7+Kvs5CdKHTEKdq1RhTBPeW8ENirt7rh
	7fJtMHsUNOFfagPaWDYc3lqdX/KHgPBVwAuBvXuoJlSKFHMHtrvl8sJrlwnTTjH9AhLLARJrioG
	vH10+1Iub0Hezx4IjszD+dzfPpr9XsZfXJ5NlV/f1LUsygoWEK9+F6u6Z8FLBIrhzJEPfKfYsQ8
	0=
X-Gm-Gg: AYBFou18Z00Vp7SyNPiYmm7MVxOCP94Icz8t3OAU9Hw3ESL3IzcPFBwhxy9y/GbkXxg
	/5mOZK1b/fHshtRIatdGUp9MHBvXxYJNi5g4YzxrC8PRuFnMR5yYOGsNdaj4Z8y0FJbrpOeoQid
	3IU0F6CYcy6uyFkUfnsr/Svu5Jn0M0iLgr2Fygy/HDDN1QFMuy2t+EzAmU4QbxuI5idBPGhZmtO
	BcKGEymVOSEXCNtFUF8iG6NbqD+Q7l4Cg/4ObrRZxzwLalS2VTRJWnBALJjigt/AB5nF6cnZLoX
	WPNfzjwZqcmaEgT16hPtghVlk8xUDakSojYXvh0D+lvMkKmfV9Le3qbcCQTU2qU42AJygFPgTtM
	4hHc86Cs4D910Ka69oymJN+X6xxOOqvLAaA9Dg8yhXKwLgX2zynlJtYfdKbaiO3qRh3Ry3QIuSP
	8Q
X-Received: by 2002:a05:620a:1d03:b0:943:faab:aabe with SMTP id af79cd13be357-94408d43a71mr195778285a.62.1793179851961;
        Wed, 28 Oct 2026 02:30:51 -0700 (PDT)
X-Received: by 2002:a05:620a:1d03:b0:943:faab:aabe with SMTP id af79cd13be357-94408d43a71mr195774285a.62.1793179851499;
        Wed, 28 Oct 2026 02:30:51 -0700 (PDT)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:8916:7b9b:97a2:6c96])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a94e4be4b2sm21772175e9.2.2026.10.28.02.30.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 02:30:50 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Jianqun Xu <jay.xu@rock-chips.com>,
        Cunhao Lu <1579567540@qq.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
Subject: Re: [PATCH] gpio: rockchip: Fix debounce arithmetic for GPIO v2
Date: Wed, 28 Oct 2026 10:30:47 +0100
Message-ID: <179317955938.10111.11780019305484547923.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261023-fix-rockchip-gpio-v2-debounce-v1-1-f1141bd5b58f@qq.com>
References: <20261023-fix-rockchip-gpio-v2-debounce-v1-1-f1141bd5b58f@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDAzNyBTYWx0ZWRfX88Z+WecmCWc8
 e7XtPbfEu2kvgzraNJdsfRfTCKwW8FAIF8nuBBnaFv0AjcgxXGyC3Z6SWZNcHzRoZgvhbjRxMJH
 bDLYwH7TSDYLCmdDRLsi04h3HO9tTngoXQE/swKgmjtnt9YfCN8GqRya5KKUlzBdZlDuFMMhgX9
 dJ4yoljdWYKZOj4YMQRHq2z6IJ2lAxWN+TrozsaF5va7AkeKaNMz0hYkD9cfWmUS/vEraMTf5Lw
 vnc4v8eeQL076u2atEPUT65ZZ1l09tG2vzJx9Wwfy1GFlPGplBjhB8dVc82YfT35b72Y2CczZb+
 IbDJdkzX1rEPdP2HY/Xev9DBrQaQGLrtQciw2cDVVcSiqTsq9oOIOObY6Cyr9gLFGdwO5bDJYMX
 EPKuhiLh8lJmrX4gwpkBCR6+h86i2sucgKFlutxmzcIdCEz1RuBWLj3Evz6WJZlYQPu/Hlz7Pg0
 gWIKj3xy3/WnrddGkcw==
X-Proofpoint-ORIG-GUID: wWp6esMtxFnboAh9CsUKrYde-GsgQfan
X-Proofpoint-GUID: wWp6esMtxFnboAh9CsUKrYde-GsgQfan
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDAzNyBTYWx0ZWRfXxBasm54hsyyZ
 c5YMqcTKB0BHM2c8HMJfbwLOEIHi05zeXcWwCLQolBpZIs6pS/f4emRoe4buL/za6voNEsnm265
 8ai4DZh3jHtnDbyoa7LiMCFv/tsyFXQ=
X-Authority-Analysis: v=2.4 cv=JodkP84C c=1 sm=1 tr=0 ts=6ae1c0cd cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=G63kk6RMYl0S_NIbZfoA:9 a=QEXdDO2ut3YA:10 a=ZXulRonScM0A:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 malwarescore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 spamscore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_023055_313199_543E5770 
X-CRM114-Status: GOOD (  10.93  )
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
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Fri, 23 Oct 2026 16:21:05 +0800, Cunhao Lu wrote:
> The debounce interval calculations use unsigned long operands. On 32-bit
> systems, the numerator used to calculate the maximum interval overflows
> before division, while multiplying the requested interval by the clock
> rate overflows before it is assigned to a u64. A zero debounce clock rate
> also causes division by zero.
> 
> Use 64-bit arithmetic for both calculations and reject a zero clock rate
> before division.
> 
> [...]

Applied, thanks!

[1/1] gpio: rockchip: Fix debounce arithmetic for GPIO v2
      https://git.kernel.org/brgl/c/13467fd6998f5da4f5b4f172f1af3d9c48d5de8f

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
