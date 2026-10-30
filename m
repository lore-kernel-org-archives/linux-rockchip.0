Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B642606A320
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 09:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wHrexKA4;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=NrxmNSFp;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Lfv6dkGy
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UDQxyDu9pTkNLziqH410S0fXhDa/BwH54G2uN98LRCo=; b=wHrexKA4xQXUkl0fR3K1LouvR2
	8WhoCzGNLb1NV5h1JmCSKWcOmj9WIEycZWHYNKCJZyyNBcOj5FGRHhKIg1fDO0qoX99B0ODeoBupb
	YDrjOBzur6bcuqWi52oaRnQ8njwYOOZkqySesWQSnabLjxb9P+YpRn3cykQVUC/dxdcnrot3X3Vfl
	zTCCK7VL9F+TTdfDwS0poxSsv8wJ0JcS2K1XJrU4aGuJ8zOhaGcLtL0S26ifHNir0Q8K0ZWTOK48+
	USs/IvPmOp2MsIRUypnWkr29JbFdyejvlIDrGNzIw+QYbxEuE8Inl93iI6Najs6LVOJWsx/4ZTJpD
	jbc3Gy2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMiaw-0000000BCdP-3dYy;
	Fri, 30 Oct 2026 09:08:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMiau-0000000BCce-2ANd
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Oct 2026 09:08:17 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69U8F3hR3308704
	for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2026 09:08:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1m4Wpp1H40EG28ghxN4iiP4fGlSbQfXytaT04yu47n0=; b=NrxmNSFp/6jYfrCQ
	W0SKdq0iENifrZ2kakeGMvw1r30bn2bhEUUQwcaZi2jMaXyRSn2KEeBlWXiMzxjg
	CMBUhqWeBJ7gWH4j57WlubsDcFq+euiYsN83xvZtB5sfGl2ybVJ97dTI4b6jz17k
	da8FVh3pzXFrhHJetTbyhyJS35azfqh+f6zDSnZEncEDEqZAn2vEmgz0PIMLDruB
	kKNaA9zygzwnNHXBm0A5EUVxACQUGDOCfxCjVfqUmpPgYFUFsLxGVKbSdoJ+wOnY
	cuwurmhTmVRUKG/+dcf/OF/kEdXmRSFxZZoBAv72JcBVCxd45lRF8JsxhA7ManHb
	Absefw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hme6qt4vg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2026 09:08:14 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-93f32050e72so116329585a.1
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2026 02:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793351294; x=1793956094; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=1m4Wpp1H40EG28ghxN4iiP4fGlSbQfXytaT04yu47n0=;
        b=Lfv6dkGy2rmXfm84mA0MZUZYkg4DTWIuswYguVNHUnM2oivhB+ijK50rGhaNwKSOki
         Jzny3xPKb8ZdfMMVk3smsnv0r9JvOL4R2ER7f6BmxC0b19LJLT9h9rkx0owBfX8HWtma
         sW/l4yUYeM/0vClZILg6Ch+coZH/7h6zgfIl4PAC0scv/BIuavAnYLE1qJ+i9iKaKreQ
         qvcxbEZXeuvAPx7nnJL41QIMNbikn6CsqC31VUfDrCdjzAxEmTHDs+c2TTc0kKYRW/Dy
         Bly9a2tMFwsfAtjmolVvBUSvAWEHk/ggW1GdczPj8X5J1Cx8Kh3zbM/ixA17KRfbhciK
         mWtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793351294; x=1793956094;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1m4Wpp1H40EG28ghxN4iiP4fGlSbQfXytaT04yu47n0=;
        b=BTEyV+bYdxd+CARRI9ZLyHBogJH9ozEI60sxFx1CbE8quGudGJjjpNnjTI7OVypDvA
         MpAZrx0d4we1LsQz++uI8Kj88hsqZ4xs3dR4LQeNngZ+P30MwQmLSXryr9AyeTf9ZSiD
         FzrEWBAWJL/dY6S7e+P5PgV0J+2GureiZXAvCYslLrF29AG/JYC0+RaqPuQrb5HDVqLA
         8YGA6KbMFWGd07BpI1w057bdG15oZb6iUEbMlbZlFMfHPlw8vHV+fCL872r69fmlZCiK
         XVdqeOJkBKUl1EjmYyH2vqDHVFmki4BKSRtZu70EA5kbSTmjrr4iknfZvYShrmEFM/Es
         ld6A==
X-Forwarded-Encrypted: i=1; AKwUvBxMRZuMMMJfud+eE+NniUTTS1Wii8mM2IUeEA2r0lJo9zry1UdXr4rkuoCXJExM4S/qh7k9q0F1Eu/DkuG43w==@lists.infradead.org
X-Gm-Message-State: AFq9FYKZOdEshnyYDs6PY/TITfq9Z+5XG02JClhPGspsYq0AsSiXSu+i
	EmOIaomDSxoMWfXRpudA8mEcJIJG6SaaMICo7+ckHn/rERIwngbny4yCb2YJoPYxECRH8KJX9Be
	EfgzKLzOc8Qo3oyy0Yn6XEYsb5yqB6iD/L9FUTHmEHQXV+qbo46BMSUdhSgAbLWNBa6xiVB0flw
	GyeJYqWDA=
X-Gm-Gg: AYBFou0d7XNKdsieBeEftx1hCMkxaBIvQ6WKCKVNbQONRMYr3Z8dggV1cyHh4zg6RHi
	TwU7c6kGPICkApfb2ygI7KCeTv/nZlNiamhi32k4u0JLLO4F7/fLyyUo/PY8A0qT1mt7YJPGt12
	2Bh1iRFS54XUeg3jLxdoyg2O/WWU/0y491yBJL8t5VNJniuH/R3+RG7H5vQob63rPrH+gunjUgX
	+ygh2pJKmX80YUTnTQ/k55jKXh5uJ9tu1csDsRN7fxaL/0qcmmnFwU1oPYOFORtQ1IssJMrS4KD
	Fmn90duV06smz5h8Nwwy/cQ+xwMfRZh3jzAAHjkcVyUCJnHCex3yAyxCJ6AnteJzZRf9BtjP1uR
	Cdnjn+8BNblmJ9q/W7ErRvNdVvRBetDFQ93wRsK+1uEE8sEw88BHq4uzLrIrX7BRlVjPE/YSr1T
	iq3yWEUbM4YpQmsgF6LrfwItartZA7bHhgw+c=
X-Received: by 2002:a05:620a:2709:b0:93f:571b:c72c with SMTP id af79cd13be357-944216b818bmr277396585a.46.1793351294039;
        Fri, 30 Oct 2026 02:08:14 -0700 (PDT)
X-Received: by 2002:a05:620a:2709:b0:93f:571b:c72c with SMTP id af79cd13be357-944216b818bmr277392185a.46.1793351293464;
        Fri, 30 Oct 2026 02:08:13 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:7fbe:151a:486d:a2cc? ([2a05:6e02:1041:c10:7fbe:151a:486d:a2cc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e71b78c10sm1958499f8f.25.2026.10.30.02.08.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2026 02:08:12 -0700 (PDT)
Message-ID: <62826ebf-d5cb-4a94-942f-76afa97b3e09@oss.qualcomm.com>
Date: Fri, 30 Oct 2026 10:08:12 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/6] powercap: Add generic hierarchy support and
 convert DTPM
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: rafael@kernel.org
Cc: Daniel Lezcano <daniel.lezcano@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Shuah Khan <shuah@kernel.org>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kselftest@vger.kernel.org
References: <cover.1793288783.git.daniel.lezcano@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <cover.1793288783.git.daniel.lezcano@oss.qualcomm.com>
X-Proofpoint-GUID: -OeD_y72u8EKHxWoBiBZQv6h8wOrnqZJ
X-Proofpoint-ORIG-GUID: -OeD_y72u8EKHxWoBiBZQv6h8wOrnqZJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDMwMDAzNiBTYWx0ZWRfX5+wXuD8p5KcK
 JCdkl3iURsW+C0cKxkYQlWi4MifdY8VCbn+y5ezKb0tO37QH12HIirjl8B4lBvC+tnAisJ6Zdtf
 aRpJqrVX1iWyuaNP/pbUebKVVHsgs6DHNgHautEtWxGMh0qWEdEiCTYRy/96stvZeiPCjcDR/Dn
 Qm5wyNFL/ejzZvqFeV1+36kYRVNe+1h2E3OahHU2QqMSVeiu2ZbLkhzYsj8PVr0mRPrjZASay87
 CejAjYJOAaryn20dJu8eCKfmuJFH30iYXvEozSLOuxnYN67zrqkTIDxHWlgdrVCUM2L1yK4AEpr
 3Qw5iVNU/z+xm48Y+0Kaa97NHEu/mNChHErwSggN+wboe3XI4tUaoAlUFOqQf0mzS5rG/S2M8Ag
 Sg1YvCNBWCRYywNfTnPH/l9cKYYsdcQpZOvOfqJe2NfZkODOby8nVeh1c7IM/RE95+/cfg/Hj71
 QWD9GxCHD5VUD4t7Jeg==
X-Authority-Analysis: v=2.4 cv=dPgzC+Zb c=1 sm=1 tr=0 ts=6ae45e7e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=h4SK1RYChiWzJ0aczLUA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDMwMDAzNiBTYWx0ZWRfXxjz639vrcY4/
 /gWxJZ+vkNR+whC69rCu5/h3grRqrKpFJt1Syc76LDmUMZLNZL/E69dnZyYQLq824d2rzWEUqwb
 H04WGMmtQW3zg3fblxUvAzuKXPwzZgA=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-30_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 spamscore=0 malwarescore=0 clxscore=1015
 priorityscore=1501 lowpriorityscore=0 phishscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610300036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_020816_683239_FD84CDAE 
X-CRM114-Status: GOOD (  13.72  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


Hi,

On 10/29/26 17:56, Daniel Lezcano wrote:

[ ... ]

> Changes in v4 (since v3):
> - Rebase on v7.3.
> - Address the selftest issues reported by Sashiko:
>    - Add a kselftest config fragment requesting CONFIG_POWERCAP,
>      CONFIG_MODULES and CONFIG_MODULE_UNLOAD, guard the module build with
>      CONFIG_POWERCAP, and skip building when prerequisites or Module.symvers
>      are missing instead of failing at modpost.
>    - Resolve the kernel output directory and pass absolute O=,
>      KBUILD_OUTPUT and module-output paths to Kbuild so cleanup works when
>      a relative O= is inherited from the parent selftest make invocation.
>    - Keep the statically initialized mutex in permanent module data so its
>      lockdep key does not point into freed module init memory. Retain a
>      separate init-only description for the hierarchy duplication test.
>    - Return KSFT_SKIP when powercap sysfs support or the test module is
>      unavailable, while retaining failures for actual module-load errors.


Just a heads up to say the series passed sashiko

Thanks

   -- Daniel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
