Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EC66D6409F
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Dec 2025 09:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3z4Vvr5yLhyFFeNV1o7LtVMRy0FoMFNmbW5VNvJEw18=; b=uLhFv2JX4ABNRJ
	xzBZ06FYbdyjCTsW1VL7Qy+xzNTlTgWkZlzIDfZDo5kXx98Y0TBZv8QqSRwe1FwoMoeLT1w58LG/4
	5uHTKKP516mi40lrEpiUVZTAgbOQ3pvjYpayyU7pNpaA5m2uOwk6XStoKfMY2KiRWywHhAJypUYzt
	0LCt6zWX1V2PQ4R6j4mm/nTY5skDF5IZ//nIffDVNznOIQU1Xcfxxa5NqebvUfQIsm5FKN8RaBw+o
	U3ghHwzZJ3gxZjjhz0MC8f4e6SchvdxNa4YcsxCJYcozgty2YnjpgnGT57RdJVfXwe0aOfMJa1m2a
	pGOkx3Fz/m8ZbgS2rrSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVnk9-00000006PQ3-1ohZ;
	Wed, 17 Dec 2025 09:22:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVnk6-00000006PPi-3mVb
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Dec 2025 09:22:48 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BH3Ewaf869122
	for <linux-rockchip@lists.infradead.org>; Wed, 17 Dec 2025 09:22:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O1NeNX279JdFE7q7QJbtFEwg7PguF0oSBvL+VDxy4RI=; b=DrbrJrYBRXrneJ3r
	x3s7eiNZOfsRm2KraHwWCXB+BVsPGIkFtKkXD8c6Ziqq/FFz+l/FUUNPnFgAUNu0
	qfnVZGvekn6FWDn11E7RibHic+0BD97g3wWO4Ms6vYKSTGiS5Dbdle9uRwzFRGVk
	ROR/47pjtm1vJ/G4UNFsM9DfFNZzU+YtfNX8CmMpyRZse4LmYXRSsEFRDYh1i8M3
	spdBmM+fqwZtsbaC/lPjB+aMHgppsY4/v00EYaHfcPm5AKkbcAu9+bJ2sO4AuNa4
	daFqbYOd7Sgmehl1VoHo39v4WEDDOBHTmdEBrjd7JSR5nPzOermdvwV4dLiK/LU0
	cm08Pg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3fj1stsp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 17 Dec 2025 09:22:46 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f1d26abbd8so41043761cf.1
        for <linux-rockchip@lists.infradead.org>; Wed, 17 Dec 2025 01:22:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765963365; x=1766568165; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O1NeNX279JdFE7q7QJbtFEwg7PguF0oSBvL+VDxy4RI=;
        b=DU+eKPmeZDRjsjBcFbEobMvP+pYdtxSdrOCGgtLC1tyDC1R9H17UzNtsT01ribo+sz
         jT9m6Y0GMyFMTHktfeXTOkNEavZe0wF1KLt1serczkKt/r9E+GoOa3dpDrVKaW5RyhyI
         IYtoBzPrHfdTx6FTECD6ZpWeCoJyiXn9PLFV86OaKLJxVH0b4mbfIE+DHlMJosFtnICo
         13GQCE70yytwN/GgheCcIM4iqXYdz4VPvTWd6DL1qfv3hUgSI2vRgsQHb3tmsxdVZIyC
         leeQoTZnK3bJ2Iy6pHal0bHUhShsYjYoWvDZVI97QMoyi2nlpuueQ1TtIWk98rHVg0bW
         qsIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765963365; x=1766568165;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=O1NeNX279JdFE7q7QJbtFEwg7PguF0oSBvL+VDxy4RI=;
        b=Xtc0wIoytUy4DIRY+3HOseOb0LZpk8goG+W1HDT+ViqVjSvXlLtSBrDdsXqvGwNbcl
         jbFXt8HLRG1M1PNZKyjd1gqqAER8/AnhtMBkcolqf5ohppMaGg26eF5YwF1dN8PZZlSv
         QL2U6mwhA4xKaT/YK1KF0yvmL82DF3a3Z989/sohWwbdsYIqcSmNcK7RyIRxYN7S6Rq0
         qBrfCkeJcMWvUOKER9wMyq2da8CPhWa4mysdlbp6GBIybTKObzVUhOe81Rjzo6t0IjBj
         Ru059RgFfnse3i5hZy2V1s3FzSGJiAPga/AraPM4UyQegqZS+qZkZLieoGguW972H9m7
         IWOw==
X-Forwarded-Encrypted: i=1; AJvYcCX5NRDylC+pD4jcr0hQFQEEu0x096Cglc9YRS1JeFnHHruMftxY36IN520dTZZFQkeDNG2j5FqJPGezWFG5PA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxGtbL3WwhyLXvn6iBUbViWQAmLuHRNVbn3HtgBGU2PFRyE4XsW
	slnwS2beweQfymG5S6fArO8EoVsnXoWYSr2zVp4sc2fRm9oKs/mmgobPiD+DZpVl3Kaget0tAe2
	41KA2tK5kpHEwaM37+iKUkekfop62wEx5Qh/PafbOkkFeZrPwE6vaI0/wBKcvkIjH0LkC1AsOZ5
	4=
X-Gm-Gg: AY/fxX5ASu5vvefZ/hWe8TrdVFpzAz0ESsHwDlXKJwkmpKRD/A0RoHutbUMkZgOhsh+
	zXWhuivx6LQczzc/G2F+qPTGWD74XG0Eu27ZKkXuMxA9gdIaEtdHy067pzZvXLcUCiszlb4/uY5
	Ea9pfB/7OJrzLTL3EtBMw8mARFqyA3UlgIaLf/kLcrYEfW+1bIYZJga7710+xceQB18ovN4uZwX
	vaYOWJlpJfj7sxKVnb5DMX8r5Erh2E4pRynfQ6zBU15r60js6d8L04wbmI2i9Mmejc6NUfHREwc
	iePcLqLWovQ3HnQLWLu6fBqDlECsc2RX+WrKR9Y6loNThy4nSNsdKjyHJVISOjdUxfXx4U/fjnO
	vJmKmzahGcBVjO9sEfQ3SuVQ8HLXH1pRXc58E
X-Received: by 2002:a05:622a:5c92:b0:4ee:ce1:ed8a with SMTP id d75a77b69052e-4f1d0467092mr292274581cf.16.1765963364362;
        Wed, 17 Dec 2025 01:22:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHVBSY9HrSb1eG5s6bXREmAEodgYzRbN7yCm6OS3ggMYrPH6PAG+bx1I0UwAuuLj2N34mfyKA==
X-Received: by 2002:a05:622a:5c92:b0:4ee:ce1:ed8a with SMTP id d75a77b69052e-4f1d0467092mr292274271cf.16.1765963363886;
        Wed, 17 Dec 2025 01:22:43 -0800 (PST)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:594b:272:c2fd:21e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4310ade7bf9sm3806668f8f.24.2025.12.17.01.22.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 01:22:43 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: heiko@sntech.de, FUKAUMI Naoki <naoki@radxa.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        brgl@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, dsimic@manjaro.org, didi.debian@cknow.org,
        wens@kernel.org, nicolas.frattaroli@collabora.com,
        detlev.casanova@collabora.com, stephen@radxa.com,
        sebastian.reichel@collabora.com, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: (subset) [RESEND PATCH 0/3] Add Belling EEPROMs found in Radxa boards
Date: Wed, 17 Dec 2025 10:22:37 +0100
Message-ID: <176596335025.7296.12753500067667593056.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251202084941.1785-1-naoki@radxa.com>
References: <20251202084941.1785-1-naoki@radxa.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA3NCBTYWx0ZWRfX0NgIhmcWGkc3
 /c/mz4pdz0UfQX7OjxoWZNgSSCw6GcjcCJZRMImxykDLvWyRK/O//XPqzQ0j3X2vb3yR0jp+YT1
 tXu23gJp+oi5cdeTtQwV1+kl804o4UVYIpy2GqVXineU8Lx8dKD+2463NnVk+YqlKGLvMSxLJya
 1kAFrEFBEkow2abhdEnRg7V4louFC0dC49OTpsdbOoNfEC2fEUdhn+jywBrB8EropC1mfWHJz+5
 9X/1LzCHwcXI+LOZ3NXvtZhNS5CTkJHoziUaEpk1CedAy83upuAgHOOoFNvT/hVQvlsuklJKpRt
 /nSg7DSgKeTV68cVPC0UB+Cr6mjmXDiZbvS5Y4jPyvZmtB9pUmfwMxSFbRKLfI8Ics1YRQ1K7Uy
 YX7PlK6PUCgFdnhoO/ssmXe7bR14ug==
X-Proofpoint-ORIG-GUID: efLqbV-XXeQYpYY4nyc6W92OEXq_6zF6
X-Proofpoint-GUID: efLqbV-XXeQYpYY4nyc6W92OEXq_6zF6
X-Authority-Analysis: v=2.4 cv=edgwvrEH c=1 sm=1 tr=0 ts=69427666 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=x5VBOJNiEakZfNYY35cA:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 clxscore=1011 impostorscore=0
 adultscore=0 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_012246_949026_B5E8F839 
X-CRM114-Status: UNSURE (   9.88  )
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


On Tue, 02 Dec 2025 08:49:38 +0000, FUKAUMI Naoki wrote:
> This patch series adds Belling BL24C04A, BL24C16A, and BL24C16F EEPROM
> found in Radxa boards.
> 
> FUKAUMI Naoki (3):
>   dt-bindings: eeprom: at24: Add compatible for Belling
>     BL24C04A/BL24C16F
>   arm64: dts: rockchip: Add EEPROMs for Radxa ROCK 4 boards
>   arm64: dts: rockchip: Add EEPROMs for Radxa boards
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: eeprom: at24: Add compatible for Belling BL24C04A/BL24C16F
      commit: 41acc4dd8a04af332416b59a4cdb4780b7716ff1

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
