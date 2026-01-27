Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1499CA6CBB
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 09:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bLlq/n7Mj9IWu3lvQy9q1uklOJiEcZxHrU7145zMAFQ=; b=cFtcspdLxcBlkO
	5+RvzJx1HcIL3uUsNr85atRw+N+cQc4pO8w3qGGG2kJnSe8orgWHZLGHolmY8h9nEVJOdni/c8Qpg
	yboDNmiLMjEEA6JOAcQhPI31a+hS0wlQyR9cx+5mfylgguLJIIDnkW+o2iFi9pqFfcdPFn8XoCb1S
	8yoWcMhJlT8Nw8+b6AIwOst+Jm/CKEUUB2mOmgmu4SYQq+TMyn6RBo6WhVwdccPXFDbhaZaBHROsv
	fgCBMoTdAYjbRRhrY9LQZFdjRUXW2+wym9ZlYxa2eu+ixseZdJikl9TQi1P19VBvMvTb6ROVtJVLM
	F1YDHMzCV2IjqRP9Ckow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkf4o-0000000DuSq-2wcT;
	Tue, 27 Jan 2026 09:09:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkf4l-0000000DuST-3Pls
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jan 2026 09:09:33 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R87Lkt2379299
	for <linux-rockchip@lists.infradead.org>; Tue, 27 Jan 2026 09:09:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4w/PEdt4yODMbk43Hg5rxTg9loVAATzSA7ihK8pVV1M=; b=Kl0PUzR0I13xywzI
	3TjMEe0XwaVO/fTt78j45zzKHIesVD8hkza7hNQocoeBFesYrjCLF+tPXS1W2w6o
	TNwnA9cCHLb6Ua77NWT7Gx1DE2WKjYvck9Vy1c8FAkl2WzHXpDgVhJzvl5BJDY4Y
	vEaCK3Z8xFiS8ksolesFtI8nrvOaGJwBIPUxCyh/kUC4JD5STyIVpFXlp0ZgvrF4
	cK+Z8w+O5Eh+ewG/GfTEBR3xsT8Bhr5Gs1sU8mnWF4cJz0ptkk62FrNJlZ6FSohs
	Pj8dOFJk8wu6x+33Rt2Xb+qnyWx1cAvRZFL2lNt0Fy86wWjf/FpN50hb7hxjYwcw
	6g+fNQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxsjr86vk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 27 Jan 2026 09:09:30 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6a7fb4421so1383518085a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Jan 2026 01:09:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769504969; x=1770109769; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4w/PEdt4yODMbk43Hg5rxTg9loVAATzSA7ihK8pVV1M=;
        b=TqP11tJ8YlxYKAICYLXKulKuLnsjExbO8bHOybdPBL5lJ7smyacyfbDiDNgdOoe1RS
         17Ze+KoOSr33+RlQT1VlawTdxu7wVaadcKuitUx+AKV+D3LONIPj46GpFieFjBmP9ogr
         t3ytU+umrwwnWCtTfBlwJpnqwBPLZp2N6eg7aYuPwCQrn7FD1G7WJhPMld5GQGd76iQV
         1purKosED3Y1LT95HCojEgQsjgVAALNgTQ8P+UJ9mZfyIfMiXgAqZfpunG2wmL2YBua6
         /lal2nK/uvLyGH/vf6dBM4KwPC3ToAIeYLBQqhGysDR+fBwY9rZaxPk227VBfdUHtwXu
         ILUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769504969; x=1770109769;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4w/PEdt4yODMbk43Hg5rxTg9loVAATzSA7ihK8pVV1M=;
        b=d9JrPabtyjjFM/cTkzSHbisaehH4Fro+CFLy7JK8WCe/8u788ag+KduoXON1q5zbwg
         wCeKvzF7IP7xHLfQkw8WDXBGPIV3P07DbpyPmzWILejp4Wwo0fRfDzbpNf7vSjAECDCe
         jZKwjo41de0g9loc5hdPRYpjxCiOpFEpnd2auoRYKcceHXiCUVYh0vm9PVKOyr+/sMdx
         PmYXxpeq2qJCHCaJbjeDlzWN7s83f3cNiEfqH0rnR3KNViB6sfWdrfp9ADVDJga+44os
         Z7mGaS8GGX4Z3KYEse/3RdP1oblvjQfRhrFEe9w5kjVdqx4lYdUSE8L6c+cNRRblF3SH
         /kcw==
X-Forwarded-Encrypted: i=1; AJvYcCVv4TJB3c8PlIGYyFPDdbehxxQXAWipWIK1ZVxLUEKeJu+TOVBRQChJoz5UAEKSLkQHp5Fja6yFrSQgjfca0g==@lists.infradead.org
X-Gm-Message-State: AOJu0YylUT26JGuYnSY/OedbFCYLu/2vK+ize/kuPkJF0g6kwQ0VGBIh
	7wjVBElwyEMV+NyjyF4q11/MeQcSSCb/dtw5vaS6feyroR+0At3sHoviBWcTJ/zm8CpvdIzoJkC
	2b3vpKZ+E3bPPHWUVbb52s1I3P8i73BodEqR7QewB2ZaJzSTTqdTfaeUDPZMCmF9979rJRQ/2V3
	4=
X-Gm-Gg: AZuq6aJsn9RCvaIBZkcjLBwSEJ7RJ+AuXusrHsrJiHSid8u4Yxoh6FbeIeD42dBtGEZ
	duyX4pbGO0mPLtdBXUEjkJjQcnqXs2Hw9XP1/R+nWmoU9JiVkeizgR3qdTGzEM9BDuRV0thCOL1
	Zcg7Zjt80rQBmWKm82ct2Jc9shFftaAq1SQE3vWFGARGId/xM00L29p7E9Ei2xeN+oLX6q3YaWG
	wK7GiqT8mNChCPHk1/2AcKKM2AMMZwPpnLoxRramYT26E9UCiKvDjTChbBYi1pzHPQdOuXSXtRL
	F5zdsOv03j1zEWY/n6M+h4GDaO4fgTiy0ApKRPC5Y9nRbiI+SoqqgJ1a423DzvvJPO8rQ0VA5d1
	0WgRgV5Bs9HaclfHxoAjk+cTlCDdDqQFPvCNEOQ==
X-Received: by 2002:a05:620a:3198:b0:8c5:2eae:cec9 with SMTP id af79cd13be357-8c70b86176cmr103436585a.26.1769504969288;
        Tue, 27 Jan 2026 01:09:29 -0800 (PST)
X-Received: by 2002:a05:620a:3198:b0:8c5:2eae:cec9 with SMTP id af79cd13be357-8c70b86176cmr103434385a.26.1769504968871;
        Tue, 27 Jan 2026 01:09:28 -0800 (PST)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:262e:d32a:e347:8b74])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804db7b434sm128163345e9.4.2026.01.27.01.09.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 01:09:27 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: brgl@kernel.org, linusw@kernel.org, heiko@sntech.de,
        Robin Murphy <robin.murphy@arm.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        sebastian.reichel@collabora.com, m.szyprowski@samsung.com,
        linux-rockchip@lists.infradead.org, linux-gpio@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] gpio/rockchip: Stop calling pinctrl for set_direction
Date: Tue, 27 Jan 2026 10:09:18 +0100
Message-ID: <176950495227.13307.15210197417772455639.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <bddc0469f25843ca5ae0cf578ab3671435ae98a7.1769429546.git.robin.murphy@arm.com>
References: <bddc0469f25843ca5ae0cf578ab3671435ae98a7.1769429546.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: 8BWZ8qv_bfwV3C_uSj-4W_YLZSmmg9Gt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA3NCBTYWx0ZWRfX92YD5F2oNe9v
 UNkr69wkK9MdnO+PJek9UOZ11B3gidRZ4jcby3LRguLTBPrwMIn1pD4exzOBhJRLsWmWqL9fPoE
 9f10DTFbD9aBatjW41n7THjk86Bs+hIIdFnefRk5XhHGKjynVEB/hnstlH7MDRv9IA67wVzmp4I
 wAQQLAkiLrCXrIvXaA27TCLeGss5WoYG4pdhsERxVj75RlmVrsfyqc0LE6PDZ1DvN+ST4MKEaQm
 QMQPG+pCs+yM6skdNDGmgsVKPgNfQL9oWaygPAO0IEWOYcjcm39jPFCcdTI4LfB00oUPuxuiFpG
 V2Sb9e0qA51oOLtKLWIG/UzAE64HqW+s2hhLwiliSkazAFpTZNNMN8GSZm/3inBgsksynpHsICK
 FhtksCC0SOu64EIFd1JslbPg3BKv1q4eZD69Z2WYyb3FeeBkeKon2DO0bLbNwGDqUJMzOPvJUpP
 xZmbW0VzLn10OZcTRyg==
X-Authority-Analysis: v=2.4 cv=b+i/I9Gx c=1 sm=1 tr=0 ts=697880ca cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=5POHT42K0a8s5Xt5xWMA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: 8BWZ8qv_bfwV3C_uSj-4W_YLZSmmg9Gt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_01,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0
 impostorscore=0 bulkscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_010931_880754_4C921D61 
X-CRM114-Status: GOOD (  12.84  )
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


On Mon, 26 Jan 2026 12:12:26 +0000, Robin Murphy wrote:
> Marking the whole controller as sleeping due to the pinctrl calls in the
> .direction_{input,output} callbacks has the unfortunate side effect that
> legitimate invocations of .get and .set, which cannot themselves sleep,
> in atomic context now spew WARN()s from gpiolib.
> 
> However, as Heiko points out, the driver doing this is a bit silly to
> begin with, as the pinctrl .gpio_set_direction hook doesn't even care
> about the direction, the hook is only used to claim the mux. And sure
> enough, the .gpio_request_enable hook exists to serve this very purpose,
> so switch to that and remove the problematic business entirely.
> 
> [...]

Applied, thanks!

[1/1] gpio/rockchip: Stop calling pinctrl for set_direction
      commit: 7ca497be00163610afb663867db24ac408752f13

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
