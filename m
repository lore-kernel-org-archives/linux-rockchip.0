Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 393B6CA9EC5
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2026 14:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YiwKOjiEdrmfJZaRiB8fOCEteUXz2paZKNOUZ7vvheI=; b=KYeFXfllmpU5qh
	skN345jOZb83iE19zVS4b+wHqoFFWFvuWZ/zN3OH4WZMq2JBJZKYDK3hgsakZDNrMOpbyDT//ovvT
	ke28NFgzandsE+Rlbii7wuF+dVbw5/gBF9yAkVt0rEfKv6eK/FdM3Ej53nt55Crs17yxsxSRPq+s7
	X24DzlGwtdoJYlT7otCzmjmIrf3mefcKfHUrGagITKwDLxyrj/2GjzyPZNmwaF/N8UTtbfJ3jc4Fg
	Mfk1uP0hm0Z3rz91kJehDennpBmpFHXJZpxc30+x+ExbrAvxsDLtOhN0iWe4po94i1MBOSc5Q63t1
	n4Phw5Khvo/TTjTZ7exA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGam-0000000Ad6L-3HYa;
	Mon, 12 Oct 2026 14:01:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGaj-0000000Ad5R-2zDn
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Oct 2026 14:01:27 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69CC03Zg2786765
	for <linux-rockchip@lists.infradead.org>; Mon, 12 Oct 2026 14:01:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Dro0ntwjq6UiQiLjHqLYsBYU8INoQdG/NC3mtnkTWFM=; b=FJc9wUbblKL6lkTo
	2aUKPxWhlauZR6Iz0thHESuvtQAiqgyV2cIqZDWwoXxzlfbVt7vH/3I90QXq2kAz
	fjkE/7gjaGiMOldclHWCw5/e/iH3yDpK8oRglBAKsWEa0VQgAFwNWeVHEuuY8Ehl
	8udZF3fpsSO6NgJqoQ9ZuvMFMGzjYPUojAfo345g23FLwQafAY7BYdDmARFpd+BC
	np5mInQLQz5yU99OhV6Jj7t4/pLf3OtHno6Xty511sA7BPKN5uZt0WAN2auyhlOe
	BmcyhU9bQ9LGpm5SlzhEFMR5z43f9L6Uapan9pt6xHKdxx8pFoSlXtaOIsK0jCFQ
	nz4hpA==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h8wffh032-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 12 Oct 2026 14:01:19 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5d600e3ee5eso1318932e0c.1
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Oct 2026 07:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791813679; x=1792418479; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Dro0ntwjq6UiQiLjHqLYsBYU8INoQdG/NC3mtnkTWFM=;
        b=UVXVW0eueW+safIQShF5PM5YUkZde6q+3juW3RgmXntgiEkjZgSKk0pJhauIdGnZ/x
         F3zO8Bb0Ev862+91XcC9nefLpXSqu0aVzKp6GLgVDYTqs+YpGhh5EJrdnO5mXQKozhHD
         fiFspdG1RlXmdyzesLDvCsvUUlSZI6M38E2tT7E8Sun6fSmcQJRWzGIR9VyDarZmzhEU
         wr+mE3bkwH2lglFDgEOBTUlyu8CgEQ/oKmwSzd+99fopsF+IUTbm8f4kIVFl433cm6ke
         LsxdxKHQwak5LK5PcR3S3AjEhIpH5H55ThwJtARd1RWIOc4ayGOLKizd1oeDKj6Jm/lv
         rimA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791813679; x=1792418479;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Dro0ntwjq6UiQiLjHqLYsBYU8INoQdG/NC3mtnkTWFM=;
        b=DfBJp2Urdm4w66vwH5YSJbZuILb8y+qzHhKE8KfNiS1bW3YMOxOD+BJ/l7SMdse5iT
         pXTOzz+zOYVlmieVCuCB0Mkrs2I1VhW3A5n50i0cJsXVVoIVYeXcA1j5tC0GdHMxYgzG
         NdtgxuMkpMFqPv73a2t5sXXiym+LnFagmJs99tZSaPea9pZHBIqrBKvpRwg4RPPX1B7V
         TdrtAU+p8Rr28J1SK2ChB0x54Ku73FSYR0N1cB4zkkTjwCsDW22a4FqsEiu51u08QM2b
         6Nt3v3V6cEXVevSoBbTQdDoAn4ofDeYTmvSU/ukbX5fpTz0YsdUMcgV6EhP7Gj0jkeib
         bEwg==
X-Forwarded-Encrypted: i=1; AKwUvByc4YkPoaewpdwsO0vRwEwFqQ4XMHDM+1wMwS+qVzFPcAr/eN+Gaq7H9t2uuakfBguCJamQVXGkx31cQ8ltBg==@lists.infradead.org
X-Gm-Message-State: AFq9FYJP3HnhyF6RJjeh0SFB3DEf27egHZhB1R2EDkDErP4ZlN7I8x1m
	/IR+IGA77vWp+xnZ6TpLZyTEfikS/aeKD9vFCEZxml3w7dqM12mJ6B+t8gVoeIxBUAag+fXmr0k
	O7es+nzKdsalEyg66npVuKTa8Mp7HwjHqH88/EYTLGrnW+W0F/EZ/mckYVU5Ij5H9XxOlCQPela
	4=
X-Gm-Gg: AYBFou1VZ7Fm+xvRGP95DVhurdpRfnBVlaNRFjq8PkuhP01rG61WpfcGj8jhR95U/45
	ge/ZEPZBkPctbCRWwuyNYCXSgyCQLEXy8zRAaWoH3ywcZHXXkjOKihN+aGZP570zIkNkd1w5CoX
	iCFFPmshrQZZI0fwXoc1o7goTmTjrKhwvUEno/XQAC+1TWxPkEyP1nWl+DrytByD+CxCXQn+Jaj
	J9nSpRrFm51alFfZjrzmF/eXn+Kha5aVHT6zFOt3PrIoqp2eWh2JC/fqUSMdRpFQ2dm7lSrsU0o
	Zr6QSVDmijXfPn57gQ3BixtyVEQhJfylDefn74kJzI0qjYJyrlOOxaBFWBHsrgGeJYdMomLdAoL
	fwzSXo+kSOzhO39BAfpq9opck0fQ=
X-Received: by 2002:a05:6122:e14b:b0:5cd:575f:9396 with SMTP id 71dfb90a1353d-5e91f483a33mr3001291e0c.12.1791813679149;
        Mon, 12 Oct 2026 07:01:19 -0700 (PDT)
X-Received: by 2002:a05:6122:e14b:b0:5cd:575f:9396 with SMTP id 71dfb90a1353d-5e91f483a33mr3001028e0c.12.1791813675799;
        Mon, 12 Oct 2026 07:01:15 -0700 (PDT)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:8916:7b9b:97a2:6c96])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48db9abd3aasm19101061f8f.32.2026.10.12.07.01.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2026 07:01:14 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Igor Velkov <iav@iav.lv>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Rosen Penev <rosenp@gmail.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 0/2] Add the PCA9655E GPIO expander to Kobol Helios64
Date: Mon, 12 Oct 2026 16:01:12 +0200
Message-ID: <179181364592.7692.13657409498098359032.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261009-helios64-pca9655-v1-0-673ee4432650@iav.lv>
References: <20261009-helios64-pca9655-v1-0-673ee4432650@iav.lv>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDA1NSBTYWx0ZWRfX+k+h9KNe6ZOS
 hGtUekfQ2PpmZIF99672GUE2Mb1sFiA0cbgIPa/jfCDfoIt96hwc7FlNtoTuzrVSv2ftNl5WVhm
 P8w5w5ZOqf8nMec5c+oD7O4+67wTIHCw0jv7dHJdiOxYvxIUMqo9GiZ4j2+WQZLIDlM0L1IAEwO
 m7nLvElUcwyPQP0P8vL8dV0i0N9jek3/S4nSgTRueZGz24zC9PIalkqav1T8Z26kLeeiVFWDLCW
 +ZZJFQTeUZAF2epvIICeyuS501DwAu5rNNWf5gAKKni0qVrYkqVAQivoZN0j5eninaTMeTwCV1D
 aFSeQb4+ChASkTZwFuPuViveRiDLUj40W8PzuXZaOlmTGqBwIQtbgj7su7SE6ZIpNU0eOduW5Er
 7LGYARjGnwty4Z5ZjRhCcHuFtNr0aw==
X-Proofpoint-GUID: AFIKQLq3NcTgng73NyRRM2ReDTSWFrpD
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDA1NSBTYWx0ZWRfXximLSYms7NwY
 OceN90aS69x/1Gg5Vxuc4YnvEJIIgtuKT+RZ2OPzKTs3GXOMrwa8MRh3xXHpkYbLHfcAo+AeguS
 ud776AVPEFxqlrp+S2osQXDW+ngD0JE=
X-Authority-Analysis: v=2.4 cv=ZcWIpcVA c=1 sm=1 tr=0 ts=6acce82f cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=zK-fWJzOMMApgNEAF1kA:9 a=QEXdDO2ut3YA:10
 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-ORIG-GUID: AFIKQLq3NcTgng73NyRRM2ReDTSWFrpD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_04,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 adultscore=0 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610120055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_070125_888546_003F7CC0 
X-CRM114-Status: GOOD (  13.73  )
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


On Fri, 09 Oct 2026 20:45:35 +0000, Igor Velkov wrote:
> On Rosen's binding v2 Krzysztof quoted the "onnn,pca9655",
> "nxp,pca9555" form [1]. This series documents that form and adds its
> first user, the expander on Kobol Helios64. Patch 1 is for the GPIO
> tree, patch 2 for the Rockchip tree; they only meet in dtbs_check.
> 
> 6dfda7947653 ("ARM: dts: marvell: armada-388: use onnn,pca9655
> compatible") in linux-next lists "onnn,pca9655" alone on Clearfog and
> Helios4; with this binding they would need the fallback as well.
> 
> [...]

I dropped the last sentence from the commit message and the Assisted-by tag
that's going away.

[1/2] dt-bindings: gpio: pca95xx: add onnn,pca9655 with nxp,pca9555 fallback
      https://git.kernel.org/brgl/c/356cab616b6f07a06c2d279fda8a9ec928fd5fff

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
