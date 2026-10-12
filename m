Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54242CA9ED0
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2026 20:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9qV8vUSfef3zZ0kEXswaLj7HEGonqdZKZdXWNBxo4w=; b=0b9EGEmDDxPTpX
	mSQndlwIiIA96OZHV8xSzXaehOm4DDCQ1RbGvNOkDtq4bQzYE/czVVFpZL7v3GBEXdXRMlXqNswMH
	qZMoMYdhAs0xXNKbrw/RYW8CYXtx8BYF9CUmUVXS6LaVDdXcJ1wKmkYQxklaXHJ6azXTO5haVHEYe
	MbQ2ru9gT26us8IPb8+BreL+uqreu793y8wXL04RcRz9Xz6B2mPav3i7sKJbDweBPw3G2G64P1DW1
	7fj36YuOB5b+o5hKAn2VuB6auw7CkLp4TXdX1Jbm/0G8umdfSPsHEk9aD+Kj3irbYKgVIKREadV+E
	lkoblL8dbLTaMQJiFSHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGMQN-0000000BS4p-0fWJ;
	Mon, 12 Oct 2026 20:15:07 +0000
Received: from mail-ej2-x09.google.com ([2a00:1450:4864:34::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGMQJ-0000000BS2b-2Yeg
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Oct 2026 20:15:05 +0000
Received: by mail-ej2-x09.google.com with SMTP id a640c23a62f3a-c2e36c7fc5dso120805666b.0
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Oct 2026 13:15:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791836101; cv=none;
        d=google.com; s=arc-20260327;
        b=jCDyD53gPU+90WfDgUxvsVCMBfsBjfQD2e4/JKo4B/rOZUROJ54GH4PP0dvyvthc9/
         gp4laDbxuf0kQjpzmTjW/EPtUSoEPMqhNCuDlmw+PBBVnCGWKAkSQ0TeKNQWMKk42gH7
         0OPYYYLJk/3LSFeJfVvGQqytFlGOGo4m6YGfXmk6ngPA02OJfsJZ85ijfY0VYMuCF3KG
         1fLPIRcWSH+RjGznXX4a5nWkBMElA01enMvSN4NCdT4EX9ok7+wroUJdj7cXGQd9xqzG
         lx0W2EXEPSJCT6c9UN0RLe+FmTApnDX06CfJ61kiF5+t5Dybu/xxN+0LvKzysucALpdN
         aKYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HS3YiJJwuBFYmXT0xY3bh6dZ6ZY38Ujwfz/IeJXETc0=;
        fh=TJVjZLuU9Hbj9nnSgsPgTJShHgUZ5tXB9feHncsA0Kg=;
        b=SZexVZDX/aCnwpLj8nK2nnkhtcI7dZe3EwYFcvXUxu4g//gdbj0y0mG9USuHxReDgZ
         1kiz2ptk9Tacp9qeYi0NK5E0UQ8sh8jyJi2RFViupuARCuNBPeCUbNF3muGSUDMISj7n
         z0OC/GrlliS5ZqGcymJLGX59RkTu+b3h7HzdA9voHuzq806Gc9FFEw0DIaCWTuvwqWcO
         ZVwudWipPbbMsBA91fQNes7SFTlT2O7chcAb2ch3UZbpIaLOtm/j30TdhZUtdVUOwJsz
         zGBgA60PvUtc5XmW9fizlZPGuvtxHTXGZ5PxLrDUkhUPcikUOF/EJ5F6oI/BXBJgalbG
         iqXQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791836101; x=1792440901; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HS3YiJJwuBFYmXT0xY3bh6dZ6ZY38Ujwfz/IeJXETc0=;
        b=QoXd5cUt/UCkl4kLksu/rlF81HaiG+MMMIpRb9zsDTvJ0jmiMJHnppOiZsUxEaG1r2
         HFZMxRMP7MEraoDk4Aw6FHai8Pr7szsj1vdAeTd7yUOiHrNfAIMgUBvMQ3baR+EyjX24
         NPwHnvdZe/N0CQIRGyiqVwqT06z+q86ucvu5ariJGH7fMv6iW/REkAzUpRzG6l2O+ttd
         d2ib416+SSRnfpaxhJQ+vYWc5h7DQGjO8ZEV/9xhNQUx6F0e/+gFatGQ9wQNK/CyaJke
         ng/GrAITQViEE99tGM5j7METo9FAZM28jKwW/UKiInSRn5JSo6GtKIZuaKHg0sZA8kVB
         lqRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791836101; x=1792440901;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=HS3YiJJwuBFYmXT0xY3bh6dZ6ZY38Ujwfz/IeJXETc0=;
        b=RLqFfxQgqZlIe1ZwHxXNI44U7MdMbjKLv6eyobJWMTLHl04ZANy3h1AfAclJ8iRd1y
         lydTjbGFK+6nyXraVgYuVTWpnV2aI7dWVmMtcTKX13M8rf2lZVrtTW/bDeqRFOP1e77Y
         6ahtjtFQms1zWiRrbeSxGrCAEC4m98wTAeV4kH2etKvEbXZT22LqQsSXxs/gEN61aFJT
         5RlYXXjnZY38ShFRoAE6+VCpFPE7VAx2gOK0mj1J5qvK3JMyIwv6cu4qjBBxb6F5bvyW
         ZEyouoYb3Jo+QnVajJM61xSiSOihJhAFRKAwwmigY0LVVonoPy9qdmsWMwc/qNw5ddQn
         9FKg==
X-Forwarded-Encrypted: i=1; AKwUvBxm4uEegt8GvLFDVE5b6ZxK+LWG0k2oMyAC1k8Q2gG4BXsXPAN5J9I4OOqG9EsWfxm8IXNeF/Ww/OD9i/AcIw==@lists.infradead.org
X-Gm-Message-State: AFq9FYLS7AgvRZVCbWfyYPi/NHrGYEemt2gWDk0VlajYa4PE+4OeQbQI
	eJRkBOFloLPyDLvzR/AKb6NDX7sgG3QTIa2yn0Z6eUkP76PZMMLPa7HL92jDSvlm8AIF0ffE4nZ
	0oq9LCEnrS4TKzf2+9MBiFqwoZMYloXT37UMrU/l1pA==
X-Gm-Gg: AYBFou0QIN94clHHjgXDlpsH9JrIR7L7+UObF/nR8qtF//DAukoCUe5aRbLUDcYwUVr
	KyHQcAvlF/yrMuYRF7WFEmtiZ9FzNtkTKFrLjZvAKCBelsSvFdCXlwpe7SX8yG4BbF8v35BpTBx
	FtpfVtAyv5jegdXzT4NgUg+elpCpJ51Gmp0zvK6gouoPtxKbFGHgleizWesSl1Z9d1bP9VTNj5/
	HcyP+66rQgixOHUmy8N5RBQkyEUKOwI2iJZ8Smr0AWThogONmKN01lBx5Fik9kPqG9RSgXDT+V8
	Zbuh++NaSM/EA0Xs20wJ2gFRNNJD7YSzbLaFByW5lQ1vxbh+3rtzufhRXZY=
X-Received: by 2002:a17:907:9712:b0:c2e:808a:f781 with SMTP id
 a640c23a62f3a-c31a9f8bc7cmr977286166b.34.1791836101394; Mon, 12 Oct 2026
 13:15:01 -0700 (PDT)
MIME-Version: 1.0
References: <20261006162807.2843858-1-coiaprant@gmail.com> <20261006162807.2843858-3-coiaprant@gmail.com>
 <ac2a4e80-6d35-457a-bdc5-ee8511198bec@rock-chips.com> <CALj3r0gQ_U2ZUJkRgF4NdB1Gd3A8ZT3T6qjLhwGZPg=VUXLsrQ@mail.gmail.com>
In-Reply-To: <CALj3r0gQ_U2ZUJkRgF4NdB1Gd3A8ZT3T6qjLhwGZPg=VUXLsrQ@mail.gmail.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 13 Oct 2026 04:14:52 +0800
X-Gm-Features: AclHuK9DIbMdxghdp8dVnDg3M3UkCfAC1pjnUxZw0sP50Y9CDUKz7Qi3PzTsHZE
Message-ID: <CALj3r0hSyVpn4Upbun4DOk5hdOH+fzEFG2E3LpfvS2YUXH8twA@mail.gmail.com>
Subject: Re: [PATCH v13 2/2] phy: rockchip: naneng-combphy: add SGMII MAC
 selection for RK3568
To: Vinod Koul <vkoul@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_131503_706086_9000B042 
X-CRM114-Status: UNSURE (   6.90  )
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

Hi Vinod,

Gentle ping on this series. It was sent on Oct 6 and carries Conor's
Acked-by on the binding.

Is there anything you'd like changed, or is it just queued?

Thanks,
Coia

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
