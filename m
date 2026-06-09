Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79523CD8CA8
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jun 2026 11:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6nS2p8TbCor0T2A3Gxyvcz/e6nIe/33myt93YEdi4eg=; b=rF79GKTtiILoWN
	hv6DQUmg6rtHpbDRvpvWiBCN1uW+Yjhv8rjqRlgxePEpEGnnRyr1jbIhIHJ+VQePN6t628lUEg9hC
	RVD4w5hyqwDUmhyabrJGCYv79TxPfMMnUAXAWSHbJYdmT3tAGAo+rglXObgoh1sdqhsxVXarHziyB
	QZ0Nscc/hJEQcAgpWwNKXCJw0RxvH4YD4wtS/FEjOsnEmAJrP9sHN3pbkF50LnUGjKSbxrTLy0Ivg
	t453ZhlKGfVvpa2Jq+ArhaJC2AirG3bfZ8SJn6Z7JNvr5eLhXgl1Ofnj514BnzE8J/A4WhwG1yCPR
	97Oa5Op8AJhvVOOj61Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWuZf-00000005RAo-13xI;
	Tue, 09 Jun 2026 11:24:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWuZc-00000005R9w-218n
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Jun 2026 11:24:50 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6599wnF52311308
	for <linux-rockchip@lists.infradead.org>; Tue, 9 Jun 2026 11:24:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	C2ZycUM2sF4NHnCdd+yV05hq4usltNMY+o6sDqF6H4A=; b=VKa3KD6d6rPTcQ/N
	DOj2iy76uxUSVU6IyT5NOPI2v5SZgwHGlZZBOVSzebAhUh7oeDy0VnEOhQcoRlUw
	BZ1fsmOGjyo1RBYcl+J3KaiAoorEoscZLyltDzuTynePTMFXRID27LK0vQXDNvOq
	4b73WGx4s+v5c9dnvUTtOfuw/01LpqLBhdzv01dFC9MCi4CoOTF3z+yqAydJtcqH
	Q0xwxtVNit2ODdYsRJ+CsjNH9s267Vruc4kQv+bLuPm/eWZ7OTuvU9G9SRr5afVX
	Z1ZtfSr+uuI4ept107238+ukbdM68qb7W1+x5CO4/m3x08cFbJ21WI9Ia0kpfH7+
	hMTd6w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4epg3v0eph-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 09 Jun 2026 11:24:47 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-517c65e497eso21827971cf.2
        for <linux-rockchip@lists.infradead.org>; Tue, 09 Jun 2026 04:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781004287; x=1781609087; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C2ZycUM2sF4NHnCdd+yV05hq4usltNMY+o6sDqF6H4A=;
        b=ZJ/m9yKMh1lCBNIot/I4JNvxWYbrEkzDcTC7DYcVbLbBW5tl+AiZhov06tFLBxwhge
         7k1+IEvnBIGT3NfMutqPor/ko3AC5kVHTAwl2PwBsuPf7eXy3tpcBpqEyDzK9pWiPfiq
         BaWJE2W13eOurxPHY71z5fMB1r84wowBanvXYtajCVDo07P8a+63uPqbfi52lOYf9PcS
         Q5vL1eOKWM+JY9sZblLqk/1GAyhbUfEYnw3twPUJvRNc2JEYqXw4nKPpPwFpQrs6fRxr
         ugdk4MFE2ja56vT3PIEWpD2ifxXjggnH9chDiJnUcn7UsHAkK6o9IVYvHdVayFualC0T
         73jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781004287; x=1781609087;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C2ZycUM2sF4NHnCdd+yV05hq4usltNMY+o6sDqF6H4A=;
        b=URR8UVSv4ZNCteuGQIkVCHPAEoiH9bCJAyDfOWq4CZ1yERDKS/aFcg1XMV2yKfvtki
         aujQSb7nh/l2n2bDxeHFpPNM+jSOXgITt11Gr/kPhkslmWGtIpxAMYpE705Hdjjr4jJR
         5l+2/DlbrOizclwxeO3VkQdKO61TtMiI7E20uudDpHT+bo2NA40GxnBnsViernxWdaZW
         HJEwc/3vRKlLfsxP8fmpNFdvhsIxXCGTTIEoMveqxYY57yr+AdnIp7P+HgqM9bFWbOrE
         GVgwgX0lE5x5lK8pBxJn/3/pRBiG9mqrkIHN/EEfgMJ5xlDws6y5zpPDUa3C1F1F6YHk
         nCPA==
X-Forwarded-Encrypted: i=1; AFNElJ8BGL2eZIKq4MOBVXTjcQMX874FP/clDfi6eXVI1SzuFJelEelPAI37JZvtp7HIfcKGf7zfiT5F8gi3aLUT4A==@lists.infradead.org
X-Gm-Message-State: AOJu0YwDLBJD4zVgdv9j9f8A9bWyJ3HZPF2cbd+NQ6PsMuL19PNtJXiP
	Ude0rzKpvmNwq9Q1HXcrvDSvF3nh9CKm2sb/SXw+VzVt+1sBWu8Ri29MsXOJ2ZNbPukAQAbrWOq
	TAeDxdvXDhG6oquQ2coSlK1F6jm0TDx2E/gnEU6QNclkVx2HW16FNLQawCEHldizAPk9W7w5fED
	KV355KVmwQSg==
X-Gm-Gg: Acq92OEX+mZjC6k5fbDfiswlHEJr9ufTLeQNMnNCrPtOiTyYdXKk5bA14jedD1LvI+C
	r2sne+7hJpayY7t/B6Z23HVxMolLiqq491fyn6gGzAmnbBegkB4pXlHtdIEK9qAQdy7uZVTFM/G
	dtAnroMkhArOwCn9bFQqa4/KYn5fUlIFE3VtM2dXDdolpHtPFFei2WnduYcYWl8jY0WF6RzJKZ1
	30DV6/HCj9iz9KzR//XlUIv9trlyUCcO3UFtyl6LVMdR4u8BziHZNs1zHXz3uDGtKOj2oDvksOg
	vO/tZKY9zycTflQJYolXNTK3pb3Kw1KJjxebicSqct6i39i+tmuLf9n02MNkpFJyga6dkPlP2Vk
	9TB8KFVggnzIkelD31aKTRapdSxpXItBAJmxGFGIUqzHOgQzaWvHaA8Ch+yqg
X-Received: by 2002:a05:622a:1f94:b0:517:626b:778 with SMTP id d75a77b69052e-517ca609d99mr31124701cf.49.1781004286789;
        Tue, 09 Jun 2026 04:24:46 -0700 (PDT)
X-Received: by 2002:a05:622a:1f94:b0:517:626b:778 with SMTP id d75a77b69052e-517ca609d99mr31124181cf.49.1781004286240;
        Tue, 09 Jun 2026 04:24:46 -0700 (PDT)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:7c63:2aa1:b7ca:7546])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f2ec711sm59688589f8f.12.2026.06.09.04.24.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 04:24:45 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
        Marco Scardovi <scardracs@disroot.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Heiko Stuebner <heiko@sntech.de>, Jianqun Xu <jay.xu@rock-chips.com>,
        linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 0/3] gpio: rockchip: Fix generic IRQ chip leak and modernize resource mapping
Date: Tue,  9 Jun 2026 13:24:43 +0200
Message-ID: <178100427596.130110.2423070495677836224.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260607230504.35392-1-scardracs@disroot.org>
References: <20260607230504.35392-1-scardracs@disroot.org>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=St6gLvO0 c=1 sm=1 tr=0 ts=6a27f7ff cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=jhzgRxFtsokRwiMRIIMA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: y5Gy4aXGXNGyOMcwAQoXVp6hNyiEZ8jA
X-Proofpoint-GUID: y5Gy4aXGXNGyOMcwAQoXVp6hNyiEZ8jA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA5MDEwNyBTYWx0ZWRfXyAR73vqZrWHW
 RJQHoBbrb1lEPTxF5NRb/t4hv9yNtKzAO9/+efoynjmY0g9UIBtXj1D2OkBtBveWJtq5Yr9Nx72
 EidYTCp4RuHxPBKzFwH9G+plfpiP4YBWA1P8jJPfhjxHq3+gFUIUSYk+RWHj344+RbTWQ9/O3vt
 uELLc3BKTljWD/4T8zINKqCamOp5d7s48tFw3J9pajsHwrbHtoQ333SgKAYoB1roxJ5GQ5PRR79
 zku6OQZ6oN++/NS1+ZsUsvptUeNbvmaDKyVWV6HCwl4a1Par2Q95yE/gYBwcKRDaYwjMzqWLT8C
 ll2HrdLMeajs6KkPipeu9uc+ClxUCw21mSe4PARFnUQiXvLVJeMfyAytNNwVNtB0ryTStwN9N8E
 KTTv11V9N1KA0UeWCL2F63/PWJ9ZnAA4Fh1DRmfMskWh8Jos7hv/rckhvk0S1nax5BlzCM89fV0
 2g7iiZaiMTwVmMprYcA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-09_02,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 spamscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606090107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260609_042448_641260_553ECAC3 
X-CRM114-Status: GOOD (  11.97  )
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


On Mon, 08 Jun 2026 01:05:01 +0200, Marco Scardovi wrote:
> This series fixes a generic IRQ chip leak in the gpio-rockchip driver
> and performs two small cleanups to use standard platform device helper APIs.
> 
> Patch 1 fixes a leak caused by generic IRQ chips not being removed before
> IRQ domain teardown.
> 
> Patch 2 converts register mapping to use devm_platform_ioremap_resource().
> 
> [...]

Applied, thanks!

[1/3] gpio: rockchip: fix generic IRQ chip leak on remove
      https://git.kernel.org/brgl/c/1c1e0fc88d6ef65bf15d517853251f75ab9d18c3

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
