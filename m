Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500DE606A32E
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 15:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=D5G/56RK;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=g1iGMU5+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=AnIwv7sF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=MzoqTiZZmyZJg8ye1YkP8Y2gXb20j1x/ZB2k/NGmyH4=; b=D5G/56RKsMtpQ9w4c2qcUT5hBT
	vhvk5lrJDVTshabJjlt+XZ2qXiOH62sulu7J6b7VVMI59QGKxHg8OlwZNHxCicZEgIUkHoCjd4U7P
	ka7TgFttQu0Wt5+LmDuo1gsm9wmbestfXE+n9onovmRWrcHINKM5mA391HED045eU7GQXl5Z83/U+
	PSk3eRiI95X2aYtJ53rDMykjkE6QM94NqT+E/CheuZ8+npnBazGFiNFtYi5vu7y/tATWmk0XhfyIm
	gU4FKw4S7E5gjtnrDmYM+zSITuJxUjqx7rvdUceyMY744jAhcvDihsaArkbvOa4ks9kZYHqNLFiQh
	oFBO3LRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWEb7-0000000AIPx-3FvA;
	Wed, 25 Nov 2026 15:07:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWEas-0000000AINe-13JR
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Nov 2026 15:07:46 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6APEM6CX2729761
	for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 15:07:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	db+Ha9wyQwvqpCYlhHffmTpkau51LqeWzqMbVXiyKQ4=; b=g1iGMU5+iI+taWPx
	yLKnXluxP0uaMQZ6O5vPH2iEJkzvOVHnbjFOxlUKSgN9I0PnTwKk9RPx0tz5phAE
	cWXakaxrTlDBuo7Ig0ayxg17cVaHRUvakyzifrARLhcIgTZpCsEH6XS8Zm9/J4wZ
	RXv0fAKx89tE2ZoK/4K+jz6tuSEyQjzpKoEat/afA6amSKDrjYvpqTeB9cRZsJbX
	pRXFEREHLj3Q0aKAwidv2GoSEMoP/vmxEhm0axosUN/os6TTs9KZmu04624uM7Nr
	ASb1nzQhhyAYBm/r0M49GHRkHxqW+wg42e+m20IdMGvKqw2YgnMNycX1SM6phLCC
	sLz5Lg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j5vukses3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 15:07:32 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cdb869327e7so4647309a12.0
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 07:07:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795619252; cv=none;
        d=google.com; s=arc-20260327;
        b=CWsdlAqDUBgeO4GHE+dNskeT85+y9Il2nAK0Zigx+30GWBDjdtmqolxMm0pELDVAem
         fHLeyTMMdjv62qpmnImY71KZjcYdxJbTvrBu60M2qisYoqPBVdQzy2EbndWQN8C4/Snj
         5eRMz5yQzqddbZRXGtm7JagD1enNtmM/pWLx9uOEPn6Dw3nvYVQ5AnYOb9EH0jk0hlmr
         Teamc48tXMqxxXkroPEEtU+m1YW6JEJsHMyZEDB1OclCvp8xcl0TQ6cjp3SXQLvsprO1
         2iQO16RT7aHgKC04N8KfanOAVCExCZjdcDztjLEqsHLZau92oliCO/zSTYL2LveN7UV3
         YSig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=db+Ha9wyQwvqpCYlhHffmTpkau51LqeWzqMbVXiyKQ4=;
        fh=qXCajBLICGiQKS/jy2FWn5qmuIR6oA+B/3zTSEV/uis=;
        b=V49QarlOZpVtSHOA48DZp8Qvyq4C8SFXqiTUbIXL4H7pfaTlRjMQ49AkG3EghdM+I9
         9/BgKvVn/cOqP40Mko0ZtE/NleJVSvwE1jCK3hfxs+kDAk9nUrVO3sacy2U4k16iBiOI
         O7Zwmd+Kmj/5NOEmhBMAPXV+bUseK7oz3mpAggIwST6dwqXph53MPvYYDX9MwgZkl5og
         njL17/LNg4Mf6nGX8/80WgnaBmx1qvnAe/t1slNp0fPIvf24rNzHU70feWLp6g1hG9cO
         FTxFZiOT2OKyQHTyQ0Floihl7RU3oc3DXL/ZK4DRxhmzwRGP4viHtlkStWoWMusZcEOx
         NB+w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795619252; x=1796224052; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=db+Ha9wyQwvqpCYlhHffmTpkau51LqeWzqMbVXiyKQ4=;
        b=AnIwv7sFHlh3fFlaxb9c8NnyY++qsYk/e4kwQa3Xegw0x1hJQskXaH14UOgpgHvlhI
         PHfwFn85eciIhvw/PkRrIkfRid3/KfpTdNOeLcJpqDU6VN+66egWGvGtq/r9d0P7h9Ih
         U6NH70Q3tsvGc/7wSN6vsYe1vRVjUhivc/XaL6MPVRJrlTiCdd7xADmfhZWQz71oPucG
         YgC8wvEwrS7ExWA9wCkaxRPEXOejLZmSJvDEGfSn1D3Sl/I6iqsHsD+z4GB91uwjAuQN
         zCHX2y94g2v7hmgpmP5BdpnKwa1Q2VqFUxZ7kr4GU02hmjMAcME8KHcMAbaJeDx892Pt
         Fv8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795619252; x=1796224052;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=db+Ha9wyQwvqpCYlhHffmTpkau51LqeWzqMbVXiyKQ4=;
        b=fxKwLs9bcrXFg1ZoXINTYrtuEOeYGm2dvl4F1s0LamQIS/3a+KerqVc0GhF5nPGyIF
         kJNEgNemXopRONmDDXmEAUQGCsYWktNRjhXD1hvV4To3xh02VYj2BxwuLnRtmYVK/yND
         fbyAgGV7NLfXW2rkMh9qD3Fzx654SUkpJ9M5Hn/ZwQhwKgjd9L3HeIewancRA2KngFh6
         gMHqo6EGvY5Q2snmA4a8v+hZIhzs3ofYVsEUiwEnZFYK1vHV8DkDpnCBdPgJ/hBZ5sin
         PsYNUyATMMsKx0HdAmBtYkrWgCarqCrGYdTQB7HVtlEPZUY+IeFX6JhYydM0eE4wPDXX
         uWkg==
X-Forwarded-Encrypted: i=1; AL+hErHpNByMwgw2Ak/6FMT4srTjRCssCUju3sizRH5gLpwTIyCUylDHGM+T0Z5Zw+v2+h1Hdw3SMds1/0aWcsVmKQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z8T2IbKU4E3gYT9CnrxjSOidse5i8M5lksNOaovVMO2vWgsWkL6
	9j3IP/ktGDRNs0PpTy4BQ5PZTWpfcIASExDSvT4zX3T33ZFCFVZ9k6SuepGtCdhtOCdgkBOG6XD
	yYWAokcx5PqHyIPIrHAYXytLc1dL7k4rlzlxrrURhnu4b+ihmu37VDHSmGMKxrFYCJQdRnVWsOw
	0UqXLRFHb93tMuV6DFc+Hs1kbBsMD73lv0SIlpCDKgmb94v4XJVA==
X-Gm-Gg: AZFdTZdJEKAGL4kQgUUXWAkeK4ca8XKw5LEcKA3mup+30cwRDNWaJbcTRtjQKSlQXPL
	ppetB6zl/4mmDLuJnxP5SVS2dA2dSu/WzOg8t9mt0EGgFH1Aw8RBa3sV8QvBbPkSq7B7+Xo5i3P
	lK0m7MCiDqRMjnx7Zm0Nh8AaI8p5RFCa+IFXMl/yClooY06wz1MtbxdrP05A==
X-Received: by 2002:a17:90b:4983:b0:3b0:97b8:d6b7 with SMTP id 98e67ed59e1d1-3b41c931d29mr17812816a91.42.1795619251744;
        Wed, 25 Nov 2026 07:07:31 -0800 (PST)
X-Received: by 2002:a17:90b:4983:b0:3b0:97b8:d6b7 with SMTP id
 98e67ed59e1d1-3b41c931d29mr17812748a91.42.1795619251127; Wed, 25 Nov 2026
 07:07:31 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261117173738.1073856-1-Frank.Li@oss.nxp.com> <20261117173738.1073856-2-Frank.Li@oss.nxp.com>
In-Reply-To: <20261117173738.1073856-2-Frank.Li@oss.nxp.com>
From: Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Date: Wed, 25 Nov 2026 16:07:19 +0100
X-Gm-Features: Aa3M54qdNdgAc_JRldH76LdEJD_mei5kpsUzvFW9k6ee3hswc_FKGO5qrF_F3iw
Message-ID: <CAPx+jO9RwkpSKwq6vq00uoXK-mcovJ2LMH7b_ByRnxOUj8nH8w@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] PM: runtime: fix stub pm_runtime_get_if_in_use()
 for !CONFIG_PM
To: Frank.Li@oss.nxp.com
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Heiko Stuebner <heiko@sntech.de>, Ulf Hansson <ulfh@kernel.org>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>,
        Matthew Auld <matthew.auld@intel.com>,
        Hans de Goede <hansg@kernel.org>,
        Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
        Peter Ujfalusi <peter.ujfalusi@linux.intel.com>,
        Mark Brown <broonie@kernel.org>,
        Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>,
        Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
        Yong Wu <yong.wu@mediatek.com>, Will Deacon <will@kernel.org>,
        Tomasz Figa <tfiga@chromium.org>, Marek Vasut <marex@denx.de>,
        Michael Tretter <m.tretter@pengutronix.de>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Hans Verkuil <hverkuil@kernel.org>,
        "open list:POWER MANAGEMENT CORE" <linux-pm@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support:Keyword:mediatek" <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support:Keyword:mediatek" <linux-mediatek@lists.infradead.org>,
        "open list:ARM/Rockchip SoC support:Keyword:b[Rr]ock[Cc]hipb" <linux-rockchip@lists.infradead.org>,
        imx@lists.linux.dev, Frank Li <Frank.Li@nxp.com>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        Tvrtko Ursulin <tursulin@ursulin.net>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
        Simona Vetter <simona@ffwll.ch>, David Airlie <airlied@gmail.com>,
        Matthew Brost <matthew.brost@intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Alessio Belle <alessio.belle@imgtec.com>,
        Luigi Santivetti <luigi.santivetti@imgtec.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Bard Liao <yung-chuan.liao@linux.intel.com>,
        Kai Vehmanen <kai.vehmanen@linux.intel.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Dafna Hirschfeld <dafna@fastmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Daniel Baluta <daniel.baluta@nxp.com>,
        Vijendar Mukunda <Vijendar.Mukunda@amd.com>,
        dri-devel@lists.freedesktop.org, imagination@lists.freedesktop.org,
        intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
        iommu@lists.linux.dev, linux-media@vger.kernel.org,
        linux-sound@vger.kernel.org, sound-open-firmware@alsa-project.org
X-Authority-Analysis: v=2.4 cv=KfVHIgYD c=1 sm=1 tr=0 ts=6b06f9b4 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=rJkE3RaqiGZ5pbrm-msn:22 a=8AirrxEcAAAA:8 a=VwQbUJbxAAAA:8 a=QyXUC8HyAAAA:8
 a=GFqr32JmAAAA:8 a=pGLkceISAAAA:8 a=r_1tXGB3AAAA:8 a=iox4zFpeAAAA:8
 a=7CQSdrXTAAAA:8 a=mpaa-ttXAAAA:8 a=QX4gbG5DAAAA:8 a=ZLGELXoPAAAA:8
 a=P1BnusSwAAAA:8 a=zd2uoN0lAAAA:8 a=e5mUnYsNAAAA:8 a=JfrnYn6hAAAA:8
 a=foHCeV_ZAAAA:8 a=Idd5WaZmN1QeKTrTtQEA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22 a=ST-jHhOKWsTCqRlWije3:22 a=f02Ha7HRcztGgdyUxOxW:22
 a=t8nPyN_e6usw4ciXM-Pk:22 a=WzC6qhA0u3u7Ye7llzcV:22 a=a-qgeE7W1pNrGK8U0ZQC:22
 a=AbAUZ8qAyYyZVLSsDulk:22 a=CFiPc5v16LZhaT-MVE1c:22 a=D0XLA9XvdZm18NrgonBM:22
 a=Vxmtnl_E_bksehYqCbjh:22 a=1CNFftbPRP8L7MoqJWF3:22 a=h8a9FgHX5U4dIE3jaWyr:22
X-Proofpoint-ORIG-GUID: 5FuyAvBdWkU0vk4SI7MyuStyEmw5ak_j
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI1MDA2MCBTYWx0ZWRfXwNR8XEoDaKv7
 N/TkNmLzkjVYzNcxRnvRG6J1Z7wcc75i/diHPzB7XD306FaAReXXIq+XiT7bZYQwsIlomrBWCqT
 15P0GqM/l3rggeDnI6xnxYXD8Hw1MxA=
X-Proofpoint-GUID: 5FuyAvBdWkU0vk4SI7MyuStyEmw5ak_j
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI1MDA2MCBTYWx0ZWRfXxkhZF/4hGdGC
 +kPKkPdelHzHj+Zj24xJjbQklfpF668YoGE6JmGd9FAtot9FSOeXYS8/mxnoP/Sc7KUJNLUYicf
 KqqB+PFLnGTOUWFbWjVtTkyKaT5aQ9QajBiO65fmiZWGbdVChvXpyhH/kJikGYmZFBvbYsgDWJI
 7C+JnpnjWe8adQGRNM3gAE0koPvYexMzm1kWhRtK8rDZy1bVDHyAyqbvUAEbI/6lv8JahnaRrqU
 l92O1on3/bY7SaIOLpaHdh9WoN5c4K7yKljuzSlho3DutJDNBUmHh74/EtUbZonvksmCzo/g06x
 LT16w/pjSTlV7u9xC1wj3qH6+b3FSFENtgJhJ3aHzRetSFoIFJnsZ4j3evfgfJB+o29PmGlDgio
 5JrhuxKBlO3fJ7OewrxZda4Wksw606eguvx4vhiu7Dn/xLfeMoeHh/iY1IdDvM5usZ5640qHI4A
 RBsRi1KKSRTj0w6+z9g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-25_04,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611250060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_070740_376678_96DA870E 
X-CRM114-Status: GOOD (  26.34  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gVHVlLCBOb3YgMTcsIDIwMjYgYXQgNjozOOKAr1BNIDxGcmFuay5MaUBvc3MubnhwLmNvbT4g
d3JvdGU6Cj4KPiBGcm9tOiBGcmFuayBMaSA8RnJhbmsuTGlAbnhwLmNvbT4KPgo+IFRoZSBzdHVi
IGZvciBwbV9ydW50aW1lX2dldF9pZl9pbl91c2UoKSB1bmRlciAhQ09ORklHX1BNIGN1cnJlbnRs
eQo+IHJldHVybnMgLUVJTlZBTC4gIFRoZSByZWFsIGltcGxlbWVudGF0aW9uIHJldHVybnM6Cj4g
ICAxICAtIGRldmljZSBpcyBhY3RpdmUgYW5kIGl0cyB1c2FnZSBjb3VudGVyIGlzIG5vbi16ZXJv
IChidW1wZWQpCj4gICAwICAtIGRldmljZSBpcyBub3QgaW4gdXNlIG9yIG5vdCBhY3RpdmUgKGNv
dW50ZXIgbm90IGJ1bXBlZCkKPiAgLUVJTlZBTCAtIHJ1bnRpbWUgUE0gZGlzYWJsZWQgZm9yIHRo
aXMgZGV2aWNlCj4KPiBXaGVuIENPTkZJR19QTSBpcyBub3Qgc2V0IGV2ZXJ5IGRldmljZSBpcyBw
ZXJtYW5lbnRseSAiYWN0aXZlIiBhbmQKPiBhbHdheXMgY29uc2lkZXJlZCAiaW4gdXNlIiwgc28g
dGhlIHN0dWIgbXVzdCByZXR1cm4gMSwgbWlycm9yaW5nCj4gX19wbV9ydW50aW1lX3Jlc3VtZSgp
IHdoaWNoIGFscmVhZHkgcmV0dXJucyAxIGluIHRoZSBzYW1lIGJ1aWxkLgo+Cj4gUmV0dXJuaW5n
IC1FSU5WQUwgYnJlYWtzIGNhbGxlcnMgdGhhdCB0ZXN0IHRoZSByZXR1cm4gdmFsdWUgd2l0aAo+
IGNvbXBhcmlzb25zIG90aGVyIHRoYW4gIiE9IDAgLyA9PSAwIjoKPgo+IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uYzoKPiAgIGlmIChpbnRlbF9ydW50aW1lX3BtX2dldF9p
Zl9pbl91c2UocnBtKSkKPiAgIHdoaWNoIHdyYXBzIHRvOiByZXQgPSBwbV9ydW50aW1lX2dldF9p
Zl9pbl91c2UoKTsgcmV0dXJuIHJldCA+IDA7Cj4gICBXaXRoIC1FSU5WQUwgdGhlIHdyYXBwZXIg
cmV0dXJucyBmYWxzZSwgY2F1c2luZyBhbiBpbmNvcnJlY3QgZXJyb3IKPiAgIHBhdGggaW4gdGhl
IEdUIGZlbmNlIHJldm9jYXRpb24gY29kZS4KPgo+IGRyaXZlcnMvZ3B1L2RybS94ZS94ZV9wbS5j
Ogo+ICAgaWYgKHBtX3J1bnRpbWVfZ2V0X2lmX2luX3VzZSh4ZS0+ZHJtLmRldikgPiAwKQo+ICAg
V2l0aCAtRUlOVkFMIHRoZSBjb25kaXRpb24gaXMgZmFsc2U7IHhlX3BtX3J1bnRpbWVfZ2V0X2lm
X2luX3VzZSgpCj4gICByZXR1cm5zIGZhbHNlLCBzbyBjYWxsZXJzIGJlbGlldmUgdGhlIGRldmlj
ZSBpcyBub3QgdXNhYmxlLgo+Cj4gZHJpdmVycy9ncHUvZHJtL2dtYTUwMC9wb3dlci5jOgo+ICAg
cmV0dXJuIHBtX3J1bnRpbWVfZ2V0X2lmX2luX3VzZShkZXYpID09IDE7Cj4gICAtRUlOVkFMICE9
IDEsIHNvIHRoZSBoZWxwZXIgYWx3YXlzIHJldHVybnMgZmFsc2Ugd2hlbiAhQ09ORklHX1BNLgo+
Cj4gZHJpdmVycy9ncHUvZHJtL2ltYWdpbmF0aW9uL3B2cl9wb3dlci5jOgo+ICAgaWYgKHBtX3J1
bnRpbWVfZ2V0X2lmX2luX3VzZSguLi4pIDw9IDApCj4gICAtRUlOVkFMIDw9IDAgaXMgdHJ1ZSwg
c28gdGhlIGRyaXZlciBhbHdheXMgdGFrZXMgdGhlICJyZXF1ZXVlIiBlcnJvcgo+ICAgcGF0aCBp
bnN0ZWFkIG9mIHByb2NlZWRpbmcgd2l0aCB0aGUgYWN0aXZlIGRldmljZS4KPgo+IHNvdW5kL3Nv
Yy9zb2YvZGVidWcuYzoKPiAgIGlmIChwbV9ydW50aW1lX2dldF9pZl9pbl91c2Uoc2Rldi0+ZGV2
KSA9PSAxKQo+ICAgLUVJTlZBTCAhPSAxLCBzbyBkM19wcmV2ZW50ZWQgaXMgbmV2ZXIgc2V0LCBj
b3JydXB0aW5nIGV4Y2VwdGlvbgo+ICAgZGVidWcgYWNjb3VudGluZy4KPgo+IGRyaXZlcnMvaW9t
bXUvbXRrX2lvbW11LmM6Cj4gICBpZiAocG1fcnVudGltZV9nZXRfaWZfaW5fdXNlKGRvbS0+cGxh
dF9kZXYtPmRldikgPD0gMCkKPiAgIC1FSU5WQUwgPD0gMCBza2lwcyB0aGUgVExCIGZsdXNoLCBs
ZWF2aW5nIHN0YWxlIElPTU1VIG1hcHBpbmdzLgo+Cj4gZHJpdmVycy9pb21tdS9yb2NrY2hpcC1p
b21tdS5jOgo+ICAgVGhyZWUgY2FsbCBzaXRlcyB1c2UgV0FSTl9PTl9PTkNFKGVyciA8IDApIG9y
IHNpbWlsYXIgcGF0dGVybnMuCj4gICAtRUlOVkFMIDwgMCB0cmlnZ2VycyBhIHNwdXJpb3VzIFdB
Uk5JTkcgb24gZXZlcnkgY2FsbC4KPgo+IGRyaXZlcnMvbWVkaWEvaTJjL2lzbDc5OTh4LmM6Cj4g
ICBpZiAocG1fcnVudGltZV9nZXRfaWZfaW5fdXNlKGRldikgPD0gMCkgICh0d28gY2FsbCBzaXRl
cykKPiAgIC1FSU5WQUwgPD0gMCBjYXVzZXMgdGhlIGRyaXZlciB0byBhbHdheXMgc2tpcCByZWdp
c3RlciBwcm9ncmFtbWluZwo+ICAgd2hlbiAhQ09ORklHX1BNLgo+Cj4gZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWRlYnVnLmM6Cj4gICBpZiAocG1fcnVudGlt
ZV9nZXRfaWZfaW5fdXNlKGRldikgPD0gMCkgICh0d28gY2FsbCBzaXRlcykKPiAgIC1FSU5WQUwg
PD0gMCBwcmV2ZW50cyBhbnkgZGVidWcgc3RhdGlzdGljcyBmcm9tIGJlaW5nIGNvbGxlY3RlZC4K
Pgo+IEZpeGVzOiBhNDM2YjZhMTlmNTcgKCJQTSAvIHJ1bnRpbWU6IEFkZCBuZXcgaGVscGVyIGZv
ciBjb25kaXRpb25hbCB1c2FnZSBjb3VudCBpbmNyZW1lbnRhdGlvbiIpCj4gRml4ZXM6IDNiODVi
N2JjY2NmNCAoImRybS94ZTogRml4IGRpc3BsYXkgcnVudGltZV9wbSBoYW5kbGluZyIpCj4gRml4
ZXM6IDY3MmM0NzM1NzZjYSAoImRybS9nbWE1MDA6IFJld3JpdGUgcG93ZXIgbWFuYWdlbWVudCBj
b2RlIikKPiBGaXhlczogYjMwMjg5ZTdmYTkyICgiQVNvQzogU09GOiBGaXggcnVudGltZSBwbSB1
c2FnZSBjb3VudGVyIGJhbGFuY2UgYWZ0ZXIgZncgZXhjZXB0aW9uIikKPiBGaXhlczogYzBiNTc1
ODFiNzNiICgiaW9tbXUvbWVkaWF0ZWs6IEFkZCBwb3dlci1kb21haW4gb3BlcmF0aW9uIikKPiBG
aXhlczogNTFlZjJiZTU0NmUyICgibWVkaWE6IGkyYzogaXNsNzk5OHg6IEFkZCBkcml2ZXIgZm9y
IEludGVyc2lsIElTTDc5OTh4IikKPiBTaWduZWQtb2ZmLWJ5OiBGcmFuayBMaSA8RnJhbmsuTGlA
bnhwLmNvbT4KPiAtLS0KPiBDaGFuZ2UgaW4gdjMKPiAtIGRyb3AgdGFnOiBjYmI4MTljMzYzYzUg
KCJtZWRpYTogcmtpc3AxOiBkZWJ1ZzogQ29sbGVjdCBpbnB1dCBzdGF0dXMgYnkgc2FtcGxpbmcg
SVNQX0ZMQUdTX1NIRCIpCj4gc2VsZWN0ZWQgUE0gYXQgYXJjaCBjb25maWcKPiAtIGRyb3AgdGFn
OiAwZjE4MWQzY2Y3ZDkgKCJpb21tdS9yb2NrY2hpcDogQWRkIHJ1bnRpbWUgUE0gc3VwcG9ydCIp
Cj4gc2VsZWN0ZWQgUE0gYXQgYXJjaCBjb25maWcKPiAtIGRyb3AgdGFnOiA5ZDU4YWE0NjI5MWQg
KCJkcm0vaTkxNTogRml4IHRoZSBHVCBmZW5jZSByZXZvY2F0aW9uIHJ1bnRpbWUgUE0gbG9naWMi
KQo+IGd1YXJkIGJ5IENPTkZJR19QTQo+IC0gZHJvcCB0YWcgNzI3NTM4YTRiYmZmICgiZHJtL2lt
YWdpbmF0aW9uOiBJbXBsZW1lbnQgcG93ZXIgbWFuYWdlbWVudCIpCj4gZGVwZW5kIG9uIFBNCj4g
YAo+IENoYW5nZSBpbiB2Mgo+IC0gbmV3IHBhdGNoZXMuCj4KPiBDYzogIlJhZmFlbCBKLiBXeXNv
Y2tpIiA8cmFmYWVsQGtlcm5lbC5vcmc+Cj4gQ2M6IGxpbnV4LXBtQHZnZXIua2VybmVsLm9yZwo+
IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPgo+IENjOiBKb29u
YXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IFJvZHJp
Z28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR1
cnN1bGluQHVyc3VsaW4ubmV0Pgo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5r
aG9yc3RAbGludXguaW50ZWwuY29tPgo+IENjOiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5l
bC5vcmc+Cj4gQ2M6ICJUaG9tYXMgSGVsbHN0cm9tIiA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5p
bnRlbC5jb20+Cj4gQ2M6IFNpbW9uYSBWZXR0ZXIgPHNpbW9uYUBmZndsbC5jaD4KPiBDYzogRGF2
aWQgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4KPiBDYzogTWF0dGhldyBCcm9zdCA8bWF0dGhl
dy5icm9zdEBpbnRlbC5jb20+Cj4gQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBz
dXNlLmRlPgo+IENjOiBQYXRyaWsgSmFrb2Jzc29uIDxwYXRyaWsuci5qYWtvYnNzb25AZ21haWwu
Y29tPgo+IENjOiBBbGVzc2lvIEJlbGxlIDxhbGVzc2lvLmJlbGxlQGltZ3RlYy5jb20+Cj4gQ2M6
IEx1aWdpIFNhbnRpdmV0dGkgPGx1aWdpLnNhbnRpdmV0dGlAaW1ndGVjLmNvbT4KPiBDYzogTGlh
bSBHaXJkd29vZCA8bGdpcmR3b29kQGdtYWlsLmNvbT4KPiBDYzogTWFyayBCcm93biA8YnJvb25p
ZUBrZXJuZWwub3JnPgo+IENjOiBKYXJvc2xhdiBLeXNlbGEgPHBlcmV4QHBlcmV4LmN6Pgo+IENj
OiBUYWthc2hpIEl3YWkgPHRpd2FpQHN1c2UuY29tPgo+IENjOiBCYXJkIExpYW8gPHl1bmctY2h1
YW4ubGlhb0BsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IFBpZXJyZS1Mb3VpcyBCb3NzYXJ0IDxwaWVy
cmUtbG91aXMuYm9zc2FydEBsaW51eC5kZXY+Cj4gQ2M6IFBldGVyIFVqZmFsdXNpIDxwZXRlci51
amZhbHVzaUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IEthaSBWZWhtYW5lbiA8a2FpLnZlaG1hbmVu
QGxpbnV4LmludGVsLmNvbT4KPiBDYzogUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNv
bT4KPiBDYzogWW9uZyBXdSA8eW9uZy53dUBtZWRpYXRlay5jb20+Cj4gQ2M6IEFuZ2Vsb0dpb2Fj
Y2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+
Cj4gQ2M6IE1hdHRoaWFzIEJydWdnZXIgPG1hdHRoaWFzLmJnZ0BnbWFpbC5jb20+Cj4gQ2M6IEhl
aWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4gQ2M6IE1hdXJvIENhcnZhbGhvIENoZWhh
YiA8bWNoZWhhYkBrZXJuZWwub3JnPgo+IENjOiBEYWZuYSBIaXJzY2hmZWxkIDxkYWZuYUBmYXN0
bWFpbC5jb20+Cj4gQ2M6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNv
bmJvYXJkLmNvbT4KPiBDYzogTWljaGFlbCBUcmV0dGVyIDxtLnRyZXR0ZXJAcGVuZ3V0cm9uaXgu
ZGU+Cj4gQ2M6IERhbmllbCBCYWx1dGEgPGRhbmllbC5iYWx1dGFAbnhwLmNvbT4KPiBDYzogV2ls
bCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KPiBDYzogVmlqZW5kYXIgTXVrdW5kYSA8VmlqZW5k
YXIuTXVrdW5kYUBhbWQuY29tPgo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cj4gQ2M6IGltYWdpbmF0aW9uQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zwo+IENjOiBpb21tdUBsaXN0cy5saW51eC5kZXYKPiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCj4gQ2M6IGxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcK
PiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKPiBDYzogbGludXgtc291bmRAdmdlci5rZXJuZWwub3JnCj4gQ2M6
IHNvdW5kLW9wZW4tZmlybXdhcmVAYWxzYS1wcm9qZWN0Lm9yZwo+IENjOiBpbXhAbGlzdHMubGlu
dXguZGV2Cj4gLS0tCj4gIGluY2x1ZGUvbGludXgvcG1fcnVudGltZS5oIHwgMiArLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQg
YS9pbmNsdWRlL2xpbnV4L3BtX3J1bnRpbWUuaCBiL2luY2x1ZGUvbGludXgvcG1fcnVudGltZS5o
Cj4gaW5kZXggZGU5ZTc1MThlY2VmMi4uMWQ5ODNmZTU1YTE2YSAxMDA2NDQKPiAtLS0gYS9pbmNs
dWRlL2xpbnV4L3BtX3J1bnRpbWUuaAo+ICsrKyBiL2luY2x1ZGUvbGludXgvcG1fcnVudGltZS5o
Cj4gQEAgLTI3Niw3ICsyNzYsNyBAQCBzdGF0aWMgaW5saW5lIGludCBwbV9zY2hlZHVsZV9zdXNw
ZW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgdW5zaWduZWQgaW50IGRlbGF5KQo+ICB9Cj4gIHN0YXRp
YyBpbmxpbmUgaW50IHBtX3J1bnRpbWVfZ2V0X2lmX2luX3VzZShzdHJ1Y3QgZGV2aWNlICpkZXYp
Cj4gIHsKPiAtICAgICAgIHJldHVybiAtRUlOVkFMOwo+ICsgICAgICAgcmV0dXJuIDE7CgpUaGlz
IHNob3VsZCBiZSByZXR1cm4gMCwgYXMgd2UgZGlkIG5vdCBidW1wIHRoZSB1c2FnZSBjb3VudC4K
Cj4gIH0KPiAgc3RhdGljIGlubGluZSBpbnQgcG1fcnVudGltZV9nZXRfaWZfYWN0aXZlKHN0cnVj
dCBkZXZpY2UgKmRldikKPiAgewo+IC0tCj4gMi40My4wCj4KCktpbmQgcmVnYXJkcwpVZmZlCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
