Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73484E67801
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Dec 2025 17:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WJA0gnD3PIBPFgVRMgTiPv8ETd+2UZ4/Ak4gfL4Ji20=; b=neeY7nrpq1ATE+
	VLAbRqjwQz1md4Mb4hTgbAoOWkiTXFaQKNsy0oPBn8HWpEp/5JQqVHMdqwd1JIaLjjJu7tbpS1mku
	M162s7l4vTJgxMo7L7g77REtiJiMSkDEbmDZF84K7I06YZJVGRmDMVk66+nrfK0vmDbjDOTxT5b5L
	jTxMD3pvHkQGwhgDs/35h95BOa5wg7OZu6OWjJYOqCsNLxJWhy9Q0H8tjtkW48qxYMTs3KbhZ5z+O
	mO0eMye0pQNf6m2LdWDbPkoXaDla0RWV0UTppgcsiJQEkHCdiIcNqWOgjZoCq7U/T4Mj/WSFJAhV6
	btj8FoBQOrFZDxsLV7RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXjIs-0000000E0BM-3zJA;
	Mon, 22 Dec 2025 17:02:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXjIq-0000000E0AO-2J4X
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Dec 2025 17:02:37 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BMEC5Y21895043
	for <linux-rockchip@lists.infradead.org>; Mon, 22 Dec 2025 17:02:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yp2RMDHYd3KhktISO6jK7zhxZreDnJv8OYT7HQAs42k=; b=WQMnjwB66gwdW62R
	NJptTlmB7Qo6HsBaPOd2eYKPEY4bEAnyoIf76Cia+E+0PdYnnYjv9Oq2XMkrw6mu
	axqLCB8+1c4W2iKoXaqXIqOtpB0gCi+5T1jXBffDT5vLnT16XjvawVkpdKyAt+k6
	jdnZhIqbCj1JpE2Oa9LOapFOU48+60uZ5ONw8+VaSKoKs1Ss5ywl+SCWwleN/12T
	wFHqqyP1qTh1JDoWKPlMz5jdNRpyLvssHrQ1GLNoHPSgt/OvF61Co64N5q3sHHsX
	IeOQbU3V1XZza5ge0vnovo5SaeACEigCpU6YvMMis7afS9is6bQ5vc+4Y1hx2EQS
	pPbZ/A==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b74tagvfw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 22 Dec 2025 17:02:34 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34c704d5d15so7990281a91.1
        for <linux-rockchip@lists.infradead.org>; Mon, 22 Dec 2025 09:02:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766422953; x=1767027753; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yp2RMDHYd3KhktISO6jK7zhxZreDnJv8OYT7HQAs42k=;
        b=PMdb80fyLppwsc7BqFU1xb2b9pNILF5j+V1suklojBmONGDBVbhDbtRQrWt1/TUDCb
         LHuzguwuo/EqSO5+HHAOaQ4XyP5atJBSW5wCHhAq4Vo6TojnCpiBUg9O3MSpeITQXj/Z
         6I99AuQDW4PxsZw+W4b30b5tgZbFCr4akZbxdREiw+CWTHjbpLXCwAZuucb39l04hiYn
         /vebU2KL+UhvCgOY9TZBa5mLKO6IjXnO2iL4v0kw3IounJvzPzFuPTx2lDjUxUtYvQk0
         cxmGoJfW7h2cavtBM6vx2McXD7Eqv2WZvEhdj/BaOswMksq+qxNWQGyRbLjT8SsvnQKz
         PVuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766422953; x=1767027753;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yp2RMDHYd3KhktISO6jK7zhxZreDnJv8OYT7HQAs42k=;
        b=Gi07/sZvTFlrZAcfwWWOauhUpTHC3T9cmoKOc2TOhxrQBUjvTjMzoaHQvQKtj0GaOi
         qYBmJEYk6hu25a4aBDX9FWzibHd9wnWdhWHPj5tpJ7VwPUwD5vxZ3HOwM/8Tt3k26o9f
         5stJXiY1kuatw+PiT3VBoQ2ULMSGtW4+XAPBwJS9ym0yvuGmRjo6BD1kS2ByjIf1cAUZ
         dly1LQmVjBlRmvjWkM31O898Hgyed8Ey3ZjonHA6d6D7KkgttIRDAiS0wleD3YmYviEO
         C1oLI88g1baM4HZS6z/ZNxTIMVW31gEtJIItiMqwyXRCTt4EM87APqo8o0IVroITY2/b
         oxTA==
X-Forwarded-Encrypted: i=1; AJvYcCWHg199/8Qi3dW0Ih8nvsO/xJ9Rxct4tFNF+kBL6uN4XXhApuPAUny6HQAMdThuot962DSFW8XkRY/2nvu7pA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz2ZtOg/hlkC9oUjIe0r4JZHaOocmy2hrgEoHy/YJNduRRnX3le
	54JnuOsUjE45sf9GrLeBPfalntqIYKULNGB8hLEtZ+Hinpt/dis4TEs/B6Hc8G+VeDGuTfoXLH9
	FkGcAcwxJ5egOe4rjGF/6Hvrew1rqanw2Q7yPlPxNNgDO8zpJ6S957uXQvIisItaLfKc/zzfCb1
	g=
X-Gm-Gg: AY/fxX4xErdPdb8GmnIi0GVki8F3AHJ+GHv57LR/+ZTiM/rVds+UBf1K9dgz7KhJzbz
	OTAG6n9bzhOj9H4kXgOaQ0SDQo+eCq9OFbxokBvyQHGE9ZW2nGcPTVKdGy7iezh6e3bPfdVhZEi
	NdSJpj4UdbAo1UiIeWrALlhjZiJ9v+1rDs1R8/BylAwpOgwK/IqupQ+D708L2hGQH/RY7gGp/yU
	QqC2rITky32wxWcWpYK1zqf11a2eOlL98RQ+ff0v2ZIldqUiWEiirdlYZQQjd2uQHTorD4amynh
	mu4mce+GEOE00EOgqMBaoDkq01AdaEOS+F8RuZIU7LLKwYp7fUXjoYHXpcAp5JbO10sITD717Pn
	gWgIVb8FW
X-Received: by 2002:a17:90b:3844:b0:33e:2d0f:479b with SMTP id 98e67ed59e1d1-34e9213011amr10256219a91.6.1766422951536;
        Mon, 22 Dec 2025 09:02:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHhxvYwCBLtPVF5mS7w3vV1awrjYvqTGweCD6BTnP0tnreJxB27rzmNxHnp8YPmNFLzmV8T+A==
X-Received: by 2002:a17:90b:3844:b0:33e:2d0f:479b with SMTP id 98e67ed59e1d1-34e9213011amr10256154a91.6.1766422950785;
        Mon, 22 Dec 2025 09:02:30 -0800 (PST)
Received: from [192.168.1.102] ([120.60.139.28])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70d4f887sm13636763a91.3.2025.12.22.09.02.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 09:02:30 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: Jingoo Han <jingoohan1@gmail.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Heiko Stuebner <heiko@sntech.de>, Niklas Cassel <cassel@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, FUKAUMI Naoki <naoki@radxa.com>,
        Krishna chaitanya chundru <quic_krichai@quicinc.com>,
        Damien Le Moal <dlemoal@kernel.org>, linux-pci@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org
In-Reply-To: <20251222064207.3246632-8-cassel@kernel.org>
References: <20251222064207.3246632-8-cassel@kernel.org>
Subject: Re: [PATCH v2 0/6] PCI: dwc: Revert Link Up IRQ support
Message-Id: <176642294649.11053.7692165747212741983.b4-ty@kernel.org>
Date: Mon, 22 Dec 2025 22:32:26 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=DPiCIiNb c=1 sm=1 tr=0 ts=694979aa cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=wbxd9xFQoh2bOL7BUxlcyw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=875CWLFNMCvb7f9f5gwA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: LKB15__wNP97EYLVVtEU8Yt4xvYjAHUO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDE1NiBTYWx0ZWRfX7nsFr4tx4ewL
 j9mNhk4nXmnHn0ideen4NL43ea+KBP440bfaP6bOSAi8Ir2FdUk3Kp2hHtObDZqipu/q2uNpz74
 H1ObBoauUXqCJG1jq2tQHHKBeJ5iACpDBFWZVWkBRbpKR4yCj2pW3wKSJ8OfHrgTR4CqfkYprGW
 O97beDxxO5iV4yMFeaRtrPVROqqzX6ldo/+C4bDn/rm37bLMdhgk6EUagBH0p9m8K3CGdpvD8sh
 i31XLHygIiJPhGXp3+nLHYyo5hiygYV0iBGU3ssKvMLJdJxb2Bf268ZD0csGcFhjBhKj6gcE5mQ
 exfFBiNZk9AduYDNKUETZoo2LALIOfyvNQtMDgRewvlHHLv9Nv7F8Vk1qhn5pcJe2AIq/oM+CgN
 qTglX8KpQMxdo3l7xTpDBfvLHfdUXwMsuntVNbsMzYrddaF5ONariGbhRmovWJJfQvfsZXMxu71
 u9V5xKp876tzcROQ+dg==
X-Proofpoint-ORIG-GUID: LKB15__wNP97EYLVVtEU8Yt4xvYjAHUO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-22_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_090236_697973_44AD9F72 
X-CRM114-Status: GOOD (  11.21  )
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


On Mon, 22 Dec 2025 07:42:07 +0100, Niklas Cassel wrote:
> Revert all patches related to pcie-designware Root Complex Link Up IRQ
> support.
> 
> While this fake hotplugging was a nice idea, it has shown that this feature
> does not handle PCIe switches correctly:
> pci_bus 0004:43: busn_res: can not insert [bus 43-41] under [bus 42-41] (conflicts with (null) [bus 42-41])
> pci_bus 0004:43: busn_res: [bus 43-41] end is updated to 43
> pci_bus 0004:43: busn_res: can not insert [bus 43] under [bus 42-41] (conflicts with (null) [bus 42-41])
> pci 0004:42:00.0: devices behind bridge are unusable because [bus 43] cannot be assigned for them
> pci_bus 0004:44: busn_res: can not insert [bus 44-41] under [bus 42-41] (conflicts with (null) [bus 42-41])
> pci_bus 0004:44: busn_res: [bus 44-41] end is updated to 44
> pci_bus 0004:44: busn_res: can not insert [bus 44] under [bus 42-41] (conflicts with (null) [bus 42-41])
> pci 0004:42:02.0: devices behind bridge are unusable because [bus 44] cannot be assigned for them
> pci_bus 0004:45: busn_res: can not insert [bus 45-41] under [bus 42-41] (conflicts with (null) [bus 42-41])
> pci_bus 0004:45: busn_res: [bus 45-41] end is updated to 45
> pci_bus 0004:45: busn_res: can not insert [bus 45] under [bus 42-41] (conflicts with (null) [bus 42-41])
> pci 0004:42:06.0: devices behind bridge are unusable because [bus 45] cannot be assigned for them
> pci_bus 0004:46: busn_res: can not insert [bus 46-41] under [bus 42-41] (conflicts with (null) [bus 42-41])
> pci_bus 0004:46: busn_res: [bus 46-41] end is updated to 46
> pci_bus 0004:46: busn_res: can not insert [bus 46] under [bus 42-41] (conflicts with (null) [bus 42-41])
> pci 0004:42:0e.0: devices behind bridge are unusable because [bus 46] cannot be assigned for them
> pci_bus 0004:42: busn_res: [bus 42-41] end is updated to 46
> pci_bus 0004:42: busn_res: can not insert [bus 42-46] under [bus 41] (conflicts with (null) [bus 41])
> pci 0004:41:00.0: devices behind bridge are unusable because [bus 42-46] cannot be assigned for them
> pcieport 0004:40:00.0: bridge has subordinate 41 but max busn 46
> 
> [...]

Applied, thanks!

[1/6] Revert "PCI: dw-rockchip: Don't wait for link since we can detect Link Up"
      commit: fc6298086bfacaa7003b0bd1da4e4f42b29f7d77
[2/6] Revert "PCI: dw-rockchip: Enumerate endpoints based on dll_link_up IRQ"
      commit: 180c3cfe36786d261a55da52a161f9e279b19a6f
[3/6] Revert "PCI: qcom: Don't wait for link if we can detect Link Up"
      commit: e9ce5b3804436301ab343bc14203a4c14b336d1b
[4/6] Revert "PCI: qcom: Enable MSI interrupts together with Link up if 'Global IRQ' is supported"
      commit: 7ebdefb87942073679e56cfbc5a72e8fc5441bfc
[5/6] Revert "PCI: qcom: Enumerate endpoints based on Link up event in 'global_irq' interrupt"
      commit: 9a9793b55854422652ea92625e48277c4651c0fd
[6/6] Revert "PCI: dwc: Don't wait for link up if driver can detect Link Up event"
      commit: 142d5869f6eec3110adda0ad2d931f5b3c22371d

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
