Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FE21C5AC82
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Aug 2026 11:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TTNnKDdZFOQu5pdoE6/kkIjKsTEwO1ia8h5zXNblB/0=; b=SMnA2A3M83QGY6
	AIXY4HROxOyLUtoWWOnaOnugkvh0kKZ6w38EIqZjS8Q8FHhOQ3vXN4MVsggRqdubiy65AwZb5lSMf
	myrf9akuflqldZPfdCKjCbmJ/j4JwTIEMDCt+tKhHymNgNCGQgyaNseQ8guP9pEgbIVYqu/9qOpiL
	bpesLIwyaNvR0LFuC738hL8fLkGXabelQrcbb9VUOaQmEpSdM8NpjOLCpSwB/W2l+SQeH3Z+RFdOt
	fZOtnygJ3cpq42iABjIEVgfn+Hd/VwKEFYXdEogAqaQRZUwWk5Cqgyby8SfOb6q6Q2DZ6WmGEU2jC
	3dThT86h3pE25qmZ9IAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOKc-0000000BdvR-2EhW;
	Mon, 10 Aug 2026 11:38:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOKZ-0000000BduQ-1Tvz
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Aug 2026 11:38:12 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67A9SCbB1119371
	for <linux-rockchip@lists.infradead.org>; Mon, 10 Aug 2026 11:38:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lHwK4kYGat+g1OrVhqOYmlqdCXRt3E1v5I86m6bCA60=; b=mbg3AcPAiU5wmwtz
	hpVcMcuEpoUK6DDQftsWwzPCSfhxLYIGNyJnIl9PZHKBuRf0NR/nI4T7khqn9P45
	Uj4jhIOQuN8NkKAUOwk6e1fk3aUWJsLKGcuNRaA3dHFV3QTHBLEAOJD/Vkh6KJXG
	PB9ZPaanYvvEB6xenjN3f0dEC0EKgH45XQgE5wvBPFGpMpQW3vttFr7okaQ8lnr0
	fYIQRN4e/0WjKMkREPUWncca/wyJ6tZf0tJudcEl1uo1Z9vvzGTe43B7Wa/kROJK
	X5bA5/dUtKpTo93iZN1urCy/g+2P2esN3K1wjIoOjv8MPhEvgoyLr05NDCWtJCYZ
	OhLZvg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fy8v6saan-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 10 Aug 2026 11:38:10 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5283df62d68so20701391cf.0
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Aug 2026 04:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786361889; x=1786966689; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=lHwK4kYGat+g1OrVhqOYmlqdCXRt3E1v5I86m6bCA60=;
        b=NrmyK9hmvnYXkpDA/8pQBY0VGP21ijIYBuqGKhG5Mb4eLiCsR1jjdurGkNxsB7eIJ9
         EjgFwQrXC9/rTH7/xCNSWbd/PRlzq/gBMBNc+rEH0aOyX1uuE5WAFc5LdeoyIwLVPOBy
         lm2t70wiBReQNTWhKlKS+OqtO1REP2+WjsjfuYxsXjyzmYniHNDEjcX6ncJG1QFV0jab
         wr3F83KJNHkUhP3BAoF9AZ4F3rlFNGIMI1Kv+GoZN/5SqRUBwH6tn2ylQsXVUuFuZXcr
         Y89DTH0/AsyprMierfPVM1gSD7giwjq64QQG9c8OeEZvdlAircmTQdzyOb/LqRxDjJDY
         xEMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786361889; x=1786966689;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lHwK4kYGat+g1OrVhqOYmlqdCXRt3E1v5I86m6bCA60=;
        b=I6qU5cSctrYmDGMuMJ7JyFB/s9TBTyYG7UQXBms+peoWAOoipr1BjIHXow28vwlrJS
         N2RVri3CclqBBv5ZyfyH9Z2waTcfh5HbdFTbWsmxFPR0wwjG9o32+Ljg7yATvJTXeCkw
         S2Rk/t/1Tj6BZWS2JdA0p1EPOUKx4NP/4xFvdnQOL2uNsM5OQS4ngOWjz3Rl6C5Sjnx6
         XP8eBuaA/ifMCISCtYd0L3lLyDH2alywSLBy8xYKRxNIt+0rcvXOVdRIr/Fh+9mJxFDo
         zBscfO92nNeBR4eke1SFwEVbvxQJ+wvPBMaBByz+5gWR5MoPypNnPnjpsO7W1SIDKORE
         qCaA==
X-Forwarded-Encrypted: i=1; AHgh+RrXoWvkPnCoA2emvR+oye1DJrP75X2Sfwpd1BNW8U7EzEhMxSj1owOUnO74Lq9c+u2+B5y3r/A3elILJ0UbDg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyXmgjHleaJ9ustMC+r8+72LhMfFcKd0XU5Tn56AfphxxyX4pGy
	WuvrUqAmNQqyso1dNQIWt31cfMPhbx5F3iW9346mAX9hqBbqbjGSVia7okGsVklNJ9bIQ1MvtGa
	W5fXf1vjdWflYs228xUy3ikmUtWZZpKDzelf4tyG964T8iQIzpvdskTEZz+ghEC7xWDV6cIreEo
	Y=
X-Gm-Gg: AR+sD102Dq8H1jm5D95MK1ek2HJRh3nBZjLcigFtLLbha8lv+H86YxEQWyc3z58vD2F
	soeSlbhLyqcTZoLkcFsXRhpNMsHLfUOtxpIX3PkcVaO/dPfKwep9FAB8nLfHb73QfLjC0jlOpDY
	SMQpQp9ayH4DYbUN7dhYjbgq/EAVYoJWOUX3NwjRJsm46+3xYNrLsD7j6yZ7cIX/ymmPswpGJA6
	SJEVe69Hok8ATb9FKjDF69Ji9c6Q/FtMa4kR7Uq20PzspPPqtxuycw/tdwB0Ocj4OVwAvHCFhLU
	V4nsTMx+629nOgGOdNT7SgJeaptEwqFHnD/y68MrG/YEttKMEPxOAfce8mNLKM9LsDz59Iv8f/2
	ku3zbwj3EJkzlNUtZrEDHn6bpC8BZ
X-Received: by 2002:a05:622a:5811:b0:51a:89c1:1eef with SMTP id d75a77b69052e-52d4bb7c7c6mr11211011cf.14.1786361889590;
        Mon, 10 Aug 2026 04:38:09 -0700 (PDT)
X-Received: by 2002:a05:622a:5811:b0:51a:89c1:1eef with SMTP id d75a77b69052e-52d4bb7c7c6mr11210361cf.14.1786361889104;
        Mon, 10 Aug 2026 04:38:09 -0700 (PDT)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:dfa2:33ac:2282:82ef])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48002145589sm36117311f8f.1.2026.08.10.04.38.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 04:38:08 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Linus Walleij <linusw@kernel.org>, Simon Glass <sjg@chromium.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
        devicetree@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
        linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
        Bartosz Golaszewski <brgl@kernel.org>,
        Jeffy Chen <jeffy.chen@rock-chips.com>,
        Ye Zhang <ye.zhang@rock-chips.com>, huang lin <hl@rock-chips.com>,
        linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v3 0/4] pinctrl: Add support for the Rockchip RV1106
Date: Mon, 10 Aug 2026 13:38:05 +0200
Message-ID: <178636188265.27644.8818691655755329598.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260729132736.3807082-1-sjg@chromium.org>
References: <20260729132736.3807082-1-sjg@chromium.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfXzRHBdQuzmFhv
 iCT/fogvb+uF3XcEQi+JrBRu9LU+QdVyKUUPNhDyKZaefQQgbGA6L7z45w9tVwonLsSChjLtyOh
 e6f5CiKCP4F4vWk2W5gtx1wH+/ssED0=
X-Authority-Analysis: v=2.4 cv=PvijqQM3 c=1 sm=1 tr=0 ts=6a79b822 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=6BMtE0E8ImWS15-xy3gA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfX/GoA9KKgLDMw
 W7q3XBuGVVMBX52uKr7Y43ZyPdHErbMrkg+weQ76APFTNqkislMalTZNYSrOdSF8zZOI6A42ILg
 CsByiN8/VrF3bYtoVN+GddbAml9hF9t7UNd/56JrbxLpo56NnNJ/OwQOtQX8GU9lkk+MZGmc0ZW
 R2fWsFqQY6JqDYRHA73HV2w5ZoCYZ1mKMh/hBgWICg1er8UCR82Go/agR0xVmQu6rsqQNf2lqlc
 jTXgK9ZZPv539aK2bWOlztdzgaP26RZ0wry4ydjI7uegW8PLH3PbnjJ++5FTKJ7rak3YjKHiUjQ
 fQnP46KLyTJcakEjHvxIMseXaJT0pWAYeToMt9Szq9I8nUBsZNXSlOIgC/oJTrNLxAH3bP1ce1g
 fsRMtb23WHCDbJ7sRGnvvt5pu/LK5YO01A+0BJfno6kvNQVMlh916ZgSSBDuqbg9DlzL2W48Dbu
 z3FV9OGG4TlRltMU0RQ==
X-Proofpoint-GUID: zj177FshwqrCcmQ1dsYuyDeM_c4ywiED
X-Proofpoint-ORIG-GUID: zj177FshwqrCcmQ1dsYuyDeM_c4ywiED
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_02,2026-08-07_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 suspectscore=0 spamscore=0 clxscore=1015
 phishscore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608100102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_043811_500689_84CAD341 
X-CRM114-Status: GOOD (  12.45  )
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


On Wed, 29 Jul 2026 07:27:24 -0600, Simon Glass wrote:
> This series adds pinctrl support for the Rockchip RV1106 and its
> RV1103 package variant, split out from the initial RV1106 enablement
> series [1] following feedback to submit per subsystem.
> 
> On this SoC each GPIO bank has a dedicated IO control (IOC) register
> block, unlike earlier Rockchip designs where the registers of all
> banks share a GRF region. Following Jonas's review of v1, each bank
> node now references the syscon for its own IOC block through a
> rockchip,grf phandle and the driver uses a separate regmap per bank,
> so no regmap crosses a block boundary.
> 
> [...]

Applied, thanks!

[2/4] dt-bindings: gpio: rockchip,gpio-bank: Add rockchip,grf property
      https://git.kernel.org/brgl/c/2f2b1a84fc141575eeabfacbd7c35af0b5dbb0b9

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
