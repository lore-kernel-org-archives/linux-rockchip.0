Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8145AD31A15
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 07:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v1RiLDvebX+TzI+nPSkysCzvYNF2lAP8UtvohLezjdc=; b=0jpHqxoqi/Z3T1
	jlDPmP6DbImFGW76CB0GmYifO0Z3Vbpd9MrGhjN09cUYkXa7QMKEChu3noCgKgsBvVDbIqm5TQWwC
	QyEq89wtwj+Tzv/x5u1SW81rrHVNBFvySUQBP1z9ZPNTv4CvckzOA3Oe5S3Y16/XD6uJkwyurYz7u
	9QKHPSio6cztDnSnujtIDspBi2jSFFFQB+U5Fe/TITs8UyPk28PAYVqE8b4bSyS6YhaHLBfibbtGa
	gP93bBcnGt8bGNr+6yz79OamzZNYHWtggiL+5dsF+GkI+AosfEo3j+eUyZPrwZfU7xEsTGKPCMuhq
	cey272rZcUi7toZqvT0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfvRl-00000008DCa-1FCu;
	Wed, 14 Jan 2026 07:37:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfvRj-00000008DBv-11Sq
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 07:37:40 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60E66CZU2138994
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 07:37:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	N8bW/rU3oGT54TyMlAsZS4cEzHpbcFqTk4v+cMfX6oA=; b=kWBXQggUpr1evQjG
	n08rFKHP0CtalIHbOev1tJUwJ4lMR/i6f8C6iI0vyqRVRjEDLgEVtNoJf9pU7P1G
	Xhc2YgQec+OD+LK1AjUuD5D6HbpEVqaEA1vJW/VV/KVaMw/+MtWMJ+OrtOqqb3ln
	TIBbvi5y3ShSYwhhQ1REmR6TnqR2EbWg9DyjgffhaS+azGjAtvMVt7duRzFbNF2A
	WIRH8rTG+ofMKuyC1XUwWPRFQrvnG+/tcS2Q3D1Tc/S0QG6o6dO423/JGqjN+X+A
	koQIFkhXLlrM8Afe0cNgEe9tJ866YvgQ5iazKa+vybbuRBJLyE4jOaZOXqYKzjZr
	Yb3EYw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnm0dux5j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 07:37:37 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34ac819b2f2so7597135a91.0
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Jan 2026 23:37:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768376256; x=1768981056; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N8bW/rU3oGT54TyMlAsZS4cEzHpbcFqTk4v+cMfX6oA=;
        b=BbYf8TNWJV3ROry8bTnZbFMh5I1i7QWLoFD4yNODxiKY9Vg8LevlWO6X2vTUi98Tyr
         tXRApstGgUpFG9KN8KVZsVG8y8dSpVgnTGJsJYm1i1v9nhaGauLCxKvZVlgpruGJCY9G
         /Hi80lwqDuJhvpnwXfR7LRIB7eaZEBIutP5peKPnsCmduC5NPPrq751Xg2j49upXGqaR
         ITAxxA7kER590uIhJbP0zQvvc8JdsHXBWQx0HpkRzrEBm7PYF460YVBsAV/hpeH2hfKc
         6FivSbjHFeOy6StclWdvTiJSFVOKDUYhjaZvDzM5n1XiCtFrXxpJA3pzrsDsmv689DbR
         rgKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768376256; x=1768981056;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=N8bW/rU3oGT54TyMlAsZS4cEzHpbcFqTk4v+cMfX6oA=;
        b=K+93VJqCYt9IiarEGYTTWae7bBjunoiLKiEYx/f+8PKOp/cv3IuFPYy3CT2yfL8+oN
         YXZ38gGAbWCUHScco+gdGbcQmWi38wFA/sgrdhtFtSW2FltrtYzfPahfs7vJ+44eBuqS
         JQQLeOZBvmRSJ5sGVaHgYSV37IJeF+R9YVs9PVmvbA7SnwgJcZw2BrBQGYNcstMqcjBi
         t1Rp/siJQRW/kIgQZcTo9jOBJigKXJz1wEEhMDETyPt7IM9t2VvIfi/Q11hctht6yyA3
         CtUXFNZH7PCEE1eB6mhsAcvEKk5gjruVs0gF2blQSb99enO9fDAVh5B/V6LOGUkWT3Ib
         ggTQ==
X-Gm-Message-State: AOJu0Yw3tdsnMm2MjTRL3QAvB1bSZsTQWqBtIU5Z+caxXpE7NbWyy7PP
	9vV2iW50qd9xt8Jo45UPNXYvLq5jGGrmtri53k8SZLM6mpJ9hjhUn9o/7gaXP0cT9CkWxVPfxZy
	U4nJ2SGEbR6BMQS5caPhvm9h7Yu5JEH9087t+4ZkmzCCSgJgB+onuA6h9wWPH8EqULPUaOHoN+D
	M=
X-Gm-Gg: AY/fxX4s4vlLsrgRMYmKuRT/ktm343hx2rAFY0eLda3G8UgzqoC6OXZQ8qL6KU5MeQj
	Sb/c1cNnfgz8UODKqWeNkJs/ntW/Xi7ScJ1eX2ylYzus6OZ1+ywsN/0KAu2U2G/6r4/8d0yfbul
	dR3FWQe8haPCe/fPm50au5dxDEKfRqwevo9KrXHJENIy2f9JSQ7la77a5dFSXAJtC3A1bl6TMUJ
	5TiaK5K/1iIptPYDHuA6GjAImVsC6t+M5Db7Q+afXkHIFGCHoSeKIL65inKcPRys8tIWN51AM5q
	kAOVJIPESIynQWuGK/KJXsKMBiF1o2C4g91AKuhyYPDDdcMwljeq/TLsDSMER62qDqzWoxI73IJ
	drlaC57z2
X-Received: by 2002:a17:90b:1c02:b0:341:194:5e7d with SMTP id 98e67ed59e1d1-35109128f8fmr1840645a91.24.1768376256316;
        Tue, 13 Jan 2026 23:37:36 -0800 (PST)
X-Received: by 2002:a17:90b:1c02:b0:341:194:5e7d with SMTP id 98e67ed59e1d1-35109128f8fmr1840623a91.24.1768376255703;
        Tue, 13 Jan 2026 23:37:35 -0800 (PST)
Received: from [192.168.1.102] ([120.60.62.237])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35109c78f20sm1113120a91.13.2026.01.13.23.37.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 23:37:35 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
        Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, Niklas Cassel <cassel@kernel.org>,
        linux-pci@vger.kernel.org
In-Reply-To: <1766570461-138256-1-git-send-email-shawn.lin@rock-chips.com>
References: <1766570461-138256-1-git-send-email-shawn.lin@rock-chips.com>
Subject: Re: [PATCH] PCI: dw-rockchip: Disable BAR 0 and BAR 1 for RC mode
Message-Id: <176837625328.207176.2407040245231111635.b4-ty@kernel.org>
Date: Wed, 14 Jan 2026 13:07:33 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=BYXVE7t2 c=1 sm=1 tr=0 ts=696747c1 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=tlgrONNCw2HA119KiuRAjA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=J8IMoB3hFG0qw-PMdxUA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: eEdq87vffIJ75u_XR6-bSCeaLTqiFbng
X-Proofpoint-GUID: eEdq87vffIJ75u_XR6-bSCeaLTqiFbng
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDA1OSBTYWx0ZWRfX5Fp635b15d9P
 sEeqbKeXofoIem8A3sRv74WkN22+4b6uQ9NKu9w8xCII55+XYPiq14BV6N9bDblVgMOrvGRM0cF
 Ig4jroMR6+5aPd5sHXlEZNkKWMF0d025u25DKICztgJ/7D7Xl4EMdaJsDDtqzT8yJhEuypK2Zy3
 0sPjqIv4tmsoXmIlIBUAHydusp/n30rfFl4b1ZcExxdH0Oz+gNliA5Hgic+seQnJjbKbydqeF/d
 zhEoyWNOTlwbLf+d+qGFEV7gkWnh571m4F/uwjq9rGqDPhiwg68LZmf729xbCyAF1DOrhwSTvNe
 vprzbArp6CeO+8C1xd3POaNbimq4K6V4oVcOn3EdIDi1vmzONnIdcNjutgwsRmJeR+41Qkn/of8
 vsVCJfkfrNV6xWZKTLwqfG1P0XSp0ss6eYdYrSwIlQPHCg6opL9q5t06v4W0TSm5WehQbwbnf2g
 ISII6JP3o8s/5xH1QdQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 impostorscore=0
 spamscore=0 malwarescore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_233739_680288_654262EF 
X-CRM114-Status: UNSURE (   9.01  )
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


On Wed, 24 Dec 2025 18:01:01 +0800, Shawn Lin wrote:
> To slitence the useless bar allocation error log of RC when
> scanning bus, as RC doesn't need BARs at all.
> 
>   pci 0000:00:00.0: [1d87:3588] type 01 class 0x060400 PCIe Root Port
>   pci 0000:00:00.0: BAR 0 [mem 0x00000000-0x3fffffff]
>   pci 0000:00:00.0: BAR 1 [mem 0x00000000-0x3fffffff]
>   pci 0000:00:00.0: ROM [mem 0x00000000-0x0000ffff pref]
> 	...
>   pci 0000:00:00.0: BAR 0 [mem 0x900000000-0x93fffffff]: assigned
>   pci 0000:00:00.0: BAR 1 [mem size 0x40000000]: can't assign; no space
>   pci 0000:00:00.0: BAR 1 [mem size 0x40000000]: failed to assign
>   pci 0000:00:00.0: ROM [mem 0xf0200000-0xf020ffff pref]: assigned
>   pci 0000:00:00.0: BAR 0 [mem 0x900000000-0x93fffffff]: releasing
>   pci 0000:00:00.0: ROM [mem 0xf0200000-0xf020ffff pref]: releasing
>   pci 0000:00:00.0: BAR 0 [mem 0x900000000-0x93fffffff]: assigned
>   pci 0000:00:00.0: BAR 1 [mem size 0x40000000]: can't assign; no space
>   pci 0000:00:00.0: BAR 1 [mem size 0x40000000]: failed to assign
> 
> [...]

Applied, thanks!

[1/1] PCI: dw-rockchip: Disable BAR 0 and BAR 1 for RC mode
      commit: b5d712e5b87fc56ff838684afb1bae359eb8069f

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
