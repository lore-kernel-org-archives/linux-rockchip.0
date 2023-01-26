Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90306C54E94
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 15:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lliIikhrUzruO4HHVVeamelhSYMr0D3sl8wrbDT8cMQ=; b=Z5ViN7FiyGdrn8
	DkhGfOLrWs+TSB2IcO6uiQl3cTk9SMw3hnsWdgSQ/oUGkwWacLRp9UANozcvNE1zNNn+XFNkukdH5
	l82oNvOtkX2NkPW1vn3VBkTFiNKFfUZDcGGEufdDn8Yq6b6d0OpDlqjQNYQRqQoNd2/GceB9FjjV7
	CgFApA6/sMS3sOsaYV+XIeCiBAbZdRkoEYyvajmQjgjknHkzwdQ+fIF7Yl+IaryJfbb6dCGYj2Id3
	xaW3TAzO14IqzZ7WYSc6fzpKMPfxwld+U9/KQ7o/gSCmQl80sSiKEf57CwA9KAPAwaCdybEV1qmUQ
	6na1t5Rn69ch6IErmVTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL4PG-00BaYp-Ve; Thu, 26 Jan 2023 15:43:18 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL4P5-00BaVz-CI
	for linux-rockchip@lists.infradead.org; Thu, 26 Jan 2023 15:43:10 +0000
Received: by mail-wm1-x331.google.com with SMTP id k16so1411367wms.2
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Jan 2023 07:43:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xaZrQvVMTexBK48seT2psGxItVIS/L4zE3c6J55k3h8=;
        b=jp04WqjEyYm+E2Tkc2ENfbxkh/4b4cMWFdtsFMHJIToG/9FZmnDZ/gC0vYolLvjzDN
         LTsDQVL579z+vKzZnxymlDvwLVEDgBe9ase7OQTz1ZNpwI+PTJjQK0bRFenOMnVGsT9O
         6QnmSFMr33MFNEGur7/bmTMkkk8b5NA6aWyz9oYUKymdP84Niq5uq2VGeLubsuEHQJji
         6UG2BA315Q0TT+gPUNNzXsBiKmUDjw5ZCKIfVrV1qLeU85jiDVZJBCjTvp2Xy25j7vQP
         N5pKbQbsQTnporgM+/+gREkjUb008iRxWJGISmoBYaD9UB1E5yY+2er2c/np+gzEu0XX
         6XUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xaZrQvVMTexBK48seT2psGxItVIS/L4zE3c6J55k3h8=;
        b=bdBf1096GcLkld1k80fF2U/RpAH5bxJ8GJTIEfZxkI4k4Chj/84NrtbCRWOWihOJx1
         Gdt6ztVEKVFBsf5EZmqclutsfq2yueNddbYC8eORj0Kk3PHREhbLpi5jvWW2PRIiVpbE
         jvd39NevKEnRKs/oTEbhMFs2oKZefSP9qxEAkype0QmqRN5P//R+Wi+n0fcDWxMrB4zp
         LAKy42NsLNi4Z35ApMqGeyU4BLDJSIOpNcBVkn4Z/olJ6AgGe4+sX7eQ6/LPtz4PnCkN
         kb9YRjKMXoKOtCWzCiAvYPibKkH3muwAFso2ShOxcNvYUWkBD/Uf28n/zS9d3WJM+wfw
         Z7HQ==
X-Gm-Message-State: AFqh2kr+mqHMZgS68Ty9m1tcCNU72DPqCfH9UhDtZ/xusFMRe8A5kOGg
	7FZHJfpOI2VwCXbg+o67htoJGg==
X-Google-Smtp-Source: AMrXdXssH15/vKnONbR1ylH/B9IaLwcgbhlzvUsooXAZkMdME223Pi73mbSr4a1nFyzzO0iOryMlCw==
X-Received: by 2002:a05:600c:4395:b0:3da:2829:2935 with SMTP id e21-20020a05600c439500b003da28292935mr35895070wmn.11.1674747785757;
        Thu, 26 Jan 2023 07:43:05 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id ip6-20020a05600ca68600b003d04e4ed873sm4909786wmb.22.2023.01.26.07.43.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jan 2023 07:43:05 -0800 (PST)
Message-ID: <f8aab3ce-f48d-3e7f-933e-abc7bd4dcc52@linaro.org>
Date: Thu, 26 Jan 2023 16:43:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 5/8] PCI: rockchip: Added dtsi entry for PCIe endpoint
 controller
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: alberto.dassatti@heig-vd.ch, xxm@rock-chips.com,
 wenrui.li@rock-chips.com, rick.wertenbroek@heig-vd.ch,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mikko Kovanen <mikko.kovanen@aavamobile.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
 <20230126135049.708524-6-rick.wertenbroek@gmail.com>
 <6a54a51b-cf1a-c601-275f-00f825fcec5d@linaro.org>
 <CAAEEuhpOjSUhiQFxKwkhiwDNtmRzzUXmGYKMuHWePJF-Q7R9dQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAAEEuhpOjSUhiQFxKwkhiwDNtmRzzUXmGYKMuHWePJF-Q7R9dQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_074307_527551_165610FD 
X-CRM114-Status: GOOD (  14.08  )
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

On 26/01/2023 16:30, Rick Wertenbroek wrote:
> On Thu, Jan 26, 2023 at 4:23 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 26/01/2023 14:50, Rick Wertenbroek wrote:
>>> Added missing PCIe endpoint controller entry in the device tree. This
>>> entry is documented in :
>>> Documentation/devicetree/bindings/pci/rockchip-pcie-ep.txt
>>
>> There is no such file
> 
> Sorry but the file exists see :
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/Documentation/devicetree/bindings/pci/rockchip-pcie-ep.txt?h=v6.0.19
> It also exists in 6.1 :
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/Documentation/devicetree/bindings/pci/rockchip-pcie-ep.txt?h=linux-6.1.y

It's some old tree. It could have existed in the past. But it does not
exist. Don't refer to non-existing paths.

Your code needs then rebasing if you refer to some old trees. Please
always work on latest maintainer's tree. Optionally on linux-next.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
