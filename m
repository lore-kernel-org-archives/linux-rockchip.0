Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08398D1CDC6
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Dec 2025 05:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sICvcK1Cum/jrF/9B55qOejPJAgNqaSHwj/YvUWwaeg=; b=suTlkONEJUsKU0
	alq5uoopd/NBc58PMlaNjwCS29NKmu5UpXtY9oMauRbriQdxAsIdxhR42960EVQrdec5mm4T/Y+DZ
	H94wWbrRv1mcvmVd4Fm1ezrIx4HygoSq5G04p4THvyob3FKiQBGZqkawq+ZIIz5a7j2V+p7JZZ5xg
	kiN9MrhKRrFlJD+SsKXLAd1+LkSKzAvwltcZEJ77Uzwa7yC7V3zviXZGlluDQqUwbccVjQFw6FY73
	0y2M2zZA5DgAeChK2BMe5kfz39+b8lplzP2l34ubQhLGzGLBTQbFkyluZMDnt9clUP2CP3btiiGPL
	SQf44Xn1dJUxhZ6h/MgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSqG2-0000000DqNt-3u4f;
	Tue, 09 Dec 2025 05:27:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSqFy-0000000DqN7-1oFe
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Dec 2025 05:27:30 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B8NXi4l2716496
	for <linux-rockchip@lists.infradead.org>; Tue, 9 Dec 2025 05:27:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IMCgIJGsE4vObHn0eT5NJVOvY+iZ8qd9njYcH5Sk0q4=; b=hiWMEyZamUrermsn
	ZkvUFMtcYyIz1JiDFfThKTyfU2Zv4qkKfnDLvxk8rS5dKDd7TzbWQ9wMGtTvx47u
	klblJA7Trk1xMirfXyJeIt+FlIrX6vDYDLQI2rUbppiNC7ey35PK6Az2h2/50k1x
	PTL9iAoW7raS/idnJm7x9qlQuDCvbM1/jPW8pgWoWOmMXJWo7SkLX88wM0WSqMkS
	l+zy6txIaxWV25r19n3Ryk7vLlF1Px/IKO4oM60XDLWLy5CYvFQ092K4jheSeT17
	UlYZmwfIyMl3OUkOTihpWK26akyJ30px2Rx/ZM4PBPlIyYGGT+NuIgnihaNJDWDA
	fH2WuA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4awwfravct-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 09 Dec 2025 05:27:25 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7be94e1a073so9768939b3a.2
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Dec 2025 21:27:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765258044; x=1765862844; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IMCgIJGsE4vObHn0eT5NJVOvY+iZ8qd9njYcH5Sk0q4=;
        b=Bo1Bmmtr5xhi+EjOcK+/oC2P53WYurfL1a+n+MeIWAtIyhe/M6NiworWIOE1CNd+BF
         7ad8ZPWELsh0nSA6rFJMYEnBOplWqugzvD+XxOqADFwSCrbHfMPTbnuKwM98IizRPyAe
         ZBsjxka9Xf0V40eDlxoMtFdVOZo4hl35Zk/eTx425heC4a2w/GMBNeEywhAcFBCNd3UW
         2ZMXNLc24mbhp09zTr3XiVdoS0dhY5IlegRIZOLLXYfXjV/EoEHpa3zWHKAU8a4rP60R
         VFYUzB9ffKVvPpGVpPa00X405tZMuX/ZJ9jaADco+8X2UFmD3Fwm9OXzLFVK9hAEf1CQ
         wh+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765258044; x=1765862844;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IMCgIJGsE4vObHn0eT5NJVOvY+iZ8qd9njYcH5Sk0q4=;
        b=eKI4AbkvUbXZmO47yu5nGixM9txqT1IV22Bi8jmP7AKB6SpxOb+73MPYA8zxZVpHbJ
         3NSRge/oYw07t6JLWKNmslLbFF8F+0l1zblVbjjBTYLP8ZADG0n9rvpgoXgQwE9uO8Pr
         5CYRqeCQpofCKo4AiTRtSgNqvBUrt2cGFZyfDZMcl6Y6Qxq73e5KUVIqtaD342ynbCr5
         ClyQ4FAwDGvn2V6FKNeq26int99VfS8GHcPQZJun7b4op1spJvPsMheOxNqnpKx2vRG2
         dzRS91tOPAQpgBLzvxSexmv1dBKjy5u61g9TVN8CDNykzyf30eYkm0dlFjdWZ8k1+5e5
         25mQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdW5s86oKZ+hfqIJCMe6v+gKANHNCeRO8i812T2fgqqNrqRZA2mc0+gfpVTAtPFcauGgUphp0yQquiS01yQA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwJD6pGdLtaML39lzFYeP9pBC3vc0PoslITB/IRnPNZOlQkYtSn
	YysdQBao7u5YKCDWxT8tF1Fd8C29NNW01xZmSc2CrteRYwvLQmD5fIHNaVDLxz2mnoadqKImdk1
	PWGOQVP+3HeMd69WCKQOe5Whbsi5Y7u4bqmjtNB0Ro8oZpWXC7j0hbqbRdAlI9SwN56ja5/MeSq
	M=
X-Gm-Gg: ASbGncvPta/Z2Z5hsetwSILB41kB5o7exMLIndl2WZBS46Po32L9j7/2kXQ7s+CS+nO
	ABFajtTCSOH2Vjc8Gc8ibzUasl1oCiUkEfJZQQPevdfooVc0HneX7bex2TkOCHrY/+NE+gbpCLt
	a3z1eSgMyR2oc9QbwYW8umDcKaUDCRxPki+EeIBYd3zJDqK+PlmtJyjml5G8pGf+uHdnEy6ct5E
	szjWtHsczcXq/zatfHKLxc7Xa/dc2Mbc3ubHUUY1TbpkzRxFzIie00NAbqC3wjcHyTvJ6zYwpd2
	TCEjpSuwqEmIOXcEoMwUuewO/ciMNrbe9rhn4x5ht8Ywl2jzlek/OqeaHkD1b16V46j7qA+1wz7
	LjIT0DnNVZt0k9N9XLr6lK+E2AT2CkpP0HvbP83Vklg==
X-Received: by 2002:a05:6a00:2e14:b0:7e8:4398:b35c with SMTP id d2e1a72fcca58-7e8c54372eamr8721700b3a.47.1765258044191;
        Mon, 08 Dec 2025 21:27:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGmSLsEWNV4wfPoZd1g+hDEGVfykeAdoNKus/hSUixAEIUH767tMdjHwQvMb9nzDHCd6MS5mg==
X-Received: by 2002:a05:6a00:2e14:b0:7e8:4398:b35c with SMTP id d2e1a72fcca58-7e8c54372eamr8721679b3a.47.1765258043686;
        Mon, 08 Dec 2025 21:27:23 -0800 (PST)
Received: from [10.218.35.45] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7e2a081587esm14616953b3a.27.2025.12.08.21.27.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Dec 2025 21:27:23 -0800 (PST)
Message-ID: <dad4957c-ca13-4742-b46d-03f0478911d5@oss.qualcomm.com>
Date: Tue, 9 Dec 2025 10:57:18 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] PCI: dwc: Make Link Up IRQ logic handle already
 powered on PCIe switches
To: Niklas Cassel <cassel@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam
 <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>,
        linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org
References: <20251201063634.4115762-2-cassel@kernel.org>
 <f1059d5d-3fa5-423a-8093-0e99b65d5f4c@oss.qualcomm.com>
 <aTev28wihes6iJqs@dhcp-10-89-81-223>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <aTev28wihes6iJqs@dhcp-10-89-81-223>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDAzOSBTYWx0ZWRfX6NI1Pengmxzt
 01fbZqgi9KNELw/EguOjMXQ6iPTrHE5v/VCRypO2n0zVBfcLRBuWlQchptq4BNbAs60Z6+3Fl8P
 iMgBZGB5Jopmtf+hzetKQkaEvFu/ku/C8A02flte5fUTYDzm2xj2rHSJhpMpJocJpgJAXteXvsq
 Uk/noCmuHiK0qfaOxLAmIUzokEDtW28LCfQH+JsfeCo2OBJ3Ekr170ht9WFMPgalzBq7dtBM0O4
 cjDzfqSfxE7ZiG8MCAe3tKrsVTch4jmgqdEXFDY+50tmxG3D7eRykoSqnMPjaCycJs96/07OwnH
 SMqNGl7vuJVUnKbv2sJeqrohvEnXlzSVZ5NP9V9oldiCp7aw3Y9oeD4mSmkOzPcU4fkLtpSU+OY
 7vGGC6Zv6deJKASRYalVnLb5al/DMw==
X-Proofpoint-ORIG-GUID: wi_rc1MoyUkdPahTLdbYbHkuUpia1sHG
X-Proofpoint-GUID: wi_rc1MoyUkdPahTLdbYbHkuUpia1sHG
X-Authority-Analysis: v=2.4 cv=fsXRpV4f c=1 sm=1 tr=0 ts=6937b33d cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=Vr8HXvedtgjsJtqvvw0A:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-08_07,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 suspectscore=0 adultscore=0 spamscore=0 clxscore=1015 bulkscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512090039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_212726_615712_43A1A71B 
X-CRM114-Status: GOOD (  25.32  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 12/9/2025 10:42 AM, Niklas Cassel wrote:
> Hello Krishna,
>
> Currently:
> For controllers with Link Up IRQ support, the pci_host_probe() call (which
> will perform PCI Configuration Space reads) is done without any of the
> delays mandated by the PCIe specification.
>
> This seems quite bad.
>
> A device might not be fully initialized during during the time of these
> PCI Configuration Space reads, but might still return some bogus values
> that are actually different from the Configuration Space reads if done
> after respecting the delays mandated by the PCIe specification.
>
> I think the options are:
> 1) Keep the pci_host_probe() call in dw_pcie_host_init() for controllers
>     with Link Up IRQ support, but make sure that we respect the delays also
>     in this case.
> or
> 2) Remove the pci_host_probe() call from dw_pcie_host_init(), and make sure
>     that pci_host_probe() is done by the first Link Up IRQ
>     (i.e. what this patch does).
>
>
> One big thing with using the Link Up IRQ is to not do any delay during PCIe
> controller driver's probe(), which reduces startup time, exactly as your
> commit message in commit 36971d6c5a9a ("PCI: qcom: Don't wait for link if
> we can detect Link Up") explains.
> Therefore, I don't think that 1) is a good solution, so that leaves us with
> 2).
>
>
> If pwrctrl drivers are created as part of the pci_host_probe() call,
> I think that perhaps an alternative would be to create an explict
> pwrctrl_init() function, and let the PCI controller drivers that actually
> use pwrctrl call that from their probe().
> (And just remove the same from pci_host_probe() ?)
>
> In fact, looking at your suggested patches (that hasn't landed yet):
> [PATCH 3/5] PCI/pwrctrl: Add APIs for explicitly creating and destroying pwrctrl devices
> [PATCH 5/5] PCI/pwrctrl: Switch to the new pwrctrl APIs
>
> https://lore.kernel.org/linux-pci/20251124-pci-pwrctrl-rework-v1-5-78a72627683d@oss.qualcomm.com/
> https://lore.kernel.org/linux-pci/20251124-pci-pwrctrl-rework-v1-3-78a72627683d@oss.qualcomm.com/
>
> Seem to do exactly that:
> Call pci_pwrctrl_create_devices() explicitly from the PCIe controller drivers
> directly, and removes the pci_pwrctrl_create_device() call from pci_host_probe().
>
> So I don't really understand your concern with this series, at least not if
> it goes on top of your series:
> https://lore.kernel.org/linux-pci/20251124-pci-pwrctrl-rework-v1-0-78a72627683d@oss.qualcomm.com/
Hi Niklas,

If this series goes on top of the our series i.e pwrctrl rework series, 
I don't have any concerns.
My only concern is link up IRQ never fires if this patch goes before series.

- Krishna Chaitanya.
>
>
> Kind regards,
> Niklas


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
